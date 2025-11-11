// Reads an order by id and returns header + line items.

import { DynamoDBClient } from "@aws-sdk/client-dynamodb";
import { DynamoDBDocumentClient, QueryCommand } from "@aws-sdk/lib-dynamodb";

const client = new DynamoDBClient({});
const ddb = DynamoDBDocumentClient.from(client);
const TABLE = process.env.ORDERS_TABLE || "CafeOrders";

function cors() {
  return {
    "Access-Control-Allow-Origin": "*",
    "Access-Control-Allow-Headers": "Content-Type,Authorization",
    "Access-Control-Allow-Methods": "GET,OPTIONS"
  };
}

export const handler = async (event) => {
  if (event.httpMethod === "OPTIONS") {
    return { statusCode: 200, headers: cors(), body: "" };
  }

  try {
    const id = event?.pathParameters?.id || event?.queryStringParameters?.id;
    if (!id) return resp(400, { error: "Missing order id" });

    const pk = `ORDER#${id}`;

    const q = await ddb.send(new QueryCommand({
      TableName: TABLE,
      KeyConditionExpression: "PK = :pk",
      ExpressionAttributeValues: { ":pk": pk }
    }));

    const items = q.Items || [];
    if (items.length === 0) return resp(404, { error: "Order not found" });

    // Separate header (SK === META#) and lines (SK starts with LINE#)
    const header = items.find(it => it.SK === "META#");
    const lines = items
      .filter(it => String(it.SK || "").startsWith("LINE#"))
      .sort((a, b) => String(a.SK).localeCompare(String(b.SK)));

    if (!header) return resp(500, { error: "Corrupt order (no META#)" });

    const result = {
      id,
      status: header.status,
      customer: header.customer,
      pickupTime: header.pickupTime,
      subtotal: header.subtotal,
      tax: header.tax,
      total: header.total,
      createdAt: header.createdAt,
      items: lines.map(l => ({
        kind: l.kind,
        name: l.name,
        quantity: l.quantity,
        unitPrice: l.unitPrice,
        lineTotal: l.lineTotal,
        selections: l.selections
      }))
    };

    return resp(200, result);
  } catch (err) {
    console.error("GET /orders/{id} error", err);
    return resp(500, { error: "Failed to fetch order" });
  }
};

function resp(statusCode, data) {
  return { statusCode, headers: cors(), body: JSON.stringify(data) };
}