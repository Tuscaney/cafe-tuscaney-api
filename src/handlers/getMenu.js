import { DynamoDBClient, ScanCommand } from "@aws-sdk/client-dynamodb";
import { unmarshall } from "@aws-sdk/util-dynamodb";

const client = new DynamoDBClient({});

export const handler = async () => {
  try {
    const res = await client.send(new ScanCommand({ TableName: process.env.MENU_TABLE }));
    const items = (res.Items || []).map(unmarshall);
    return {
      statusCode: 200,
      headers: { "Access-Control-Allow-Origin": "*" },
      body: JSON.stringify(items)
    };
  } catch (err) {
    console.error("Error scanning menu:", err);
    return {
      statusCode: 500,
      headers: { "Access-Control-Allow-Origin": "*" },
      body: JSON.stringify({ error: "Failed to fetch menu" })
    };
  }
};
