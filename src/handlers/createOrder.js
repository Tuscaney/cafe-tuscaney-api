export const handler = async (event) => ({
  statusCode: 201,
  headers: { "Access-Control-Allow-Origin": "*" },
  body: JSON.stringify({ ok: true, received: event?.body || null })
});
