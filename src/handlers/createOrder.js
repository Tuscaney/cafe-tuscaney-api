import { DynamoDBClient } from "@aws-sdk/client-dynamodb";
import { DynamoDBDocumentClient, PutCommand, BatchWriteCommand } from "@aws-sdk/lib-dynamodb";
import crypto from "crypto";

const client = new DynamoDBClient({});
const ddb = DynamoDBDocumentClient.from(client, { marshallOptions: { removeUndefinedValues: true } });
const TABLE = process.env.ORDERS_TABLE || "CafeOrders";

function cors() {
  return {
    "Access-Control-Allow-Origin": "*",
    "Access-Control-Allow-Headers": "Content-Type,Authorization",
    "Access-Control-Allow-Methods": "POST,OPTIONS"
  };
}

export const handler = async (event) => {
  if (event.httpMethod === "OPTIONS") {
    return { statusCode: 200, headers: cors(), body: "" };
  }

  try {
    const body = JSON.parse(event.body || "{}");

    if (!Array.isArray(body.items) || body.items.length === 0) {
      return resp(400, { error: "Order must include at least one item" });
    }

    const customer = body.customer || { name: "", phone: "" };
    const pickupTime = body.pickupTime || null;
    const subtotal = num(body.subtotal);
    const tax = num(body.tax);
    const total = num(body.total);

    const id = crypto.randomUUID();
    const createdAt = new Date().toISOString();

    const header = {
      PK: `ORDER#${id}`,
      SK: "META#",
      GSI1PK: "STATUS#placed",
      GSI1SK: createdAt,
      status: "placed",
      customer,
      pickupTime,
      subtotal,
      tax,
      total,
      createdAt
    };

    const lines = (body.items || []).map((it, idx) => ({
      PK: `ORDER#${id}`,
      SK: `LINE#${String(idx + 1).padStart(4, "0")}`,
      kind: it.kind || "item",
      name: it.name || "",
      quantity: num(it.qty || it.quantity || 1),
      unitPrice: num(it.unitPrice || 0),
      lineTotal: num(it.lineTotal || 0),
      selections: it.selections || it.options || {}
    }));

    await ddb.send(new PutCommand({
      TableName: TABLE,
      Item: header,
      ConditionExpression: "attribute_not_exists(PK)"
    }));

    if (lines.length > 0) {
      const requests = lines.map(item => ({ PutRequest: { Item: item } }));
      await ddb.send(new BatchWriteCommand({ RequestItems: { [TABLE]: requests } }));
    }

    return resp(201, { id, status: "placed", createdAt });
  } catch (err) {
    console.error("POST /orders error", err);
    return resp(500, { error: "Failed to create order" });
  }
};

function num(v) { const n = Number(v); return Number.isFinite(n) ? n : 0; }
function resp(statusCode, data) { return { statusCode, headers: cors(), body: JSON.stringify(data) }; }

