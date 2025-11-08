# Café Tuscaney API

Serverless backend for Café Tuscaney. See capstone-plan.md for scope and data model.

## Tech

AWS Lambda + API Gateway, DynamoDB, TypeScript, AWS SDK v3, zod, middy

## Env
TABLE_ORDERS=Orders
TABLE_MENU=Menu
ALLOWED_ORIGIN=https://<cloudfront-domain>

## Endpoints (MVP)

GET /menu · GET /menu/:category · POST /orders · GET /orders/:id · (admin) GET /orders?status= · (admin) PATCH /orders/:id