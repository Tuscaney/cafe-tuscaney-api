# Lambda: Cafe_CreateOrder

- Runtime: Node.js 22.x
- Role: CafeTuscaneyLambdaRole
- Env vars: ORDERS_TABLE = CafeOrders
- Writes:
  - Header: PK=ORDER#<uuid>, SK=META#, GSI1PK=STATUS#placed, GSI1SK=<ISO>
  - Lines:  PK=ORDER#<uuid>, SK=LINE#0001..NNNN
- Returns: 201 with { id, status, createdAt }
- Deployed via AWS Console on November 10, 2025
