# API Gateway: CafeTuscaneyApi

- Type: HTTP API
- Stage: default
- Invoke URL: https://6b6ni0suhd.execute-api.us-east-2.amazonaws.com 
- Routes:
  - GET /menu -> Cafe_GetMenu
  - POST /orders -> Cafe_CreateOrder
  - GET /orders/{id} -> Cafe_GetOrder
- CORS:
  - Allow-Origin: *
  - Methods: GET,POST,OPTIONS
  - Headers: Content-Type,Authorization
- Created via AWS Console on <November 11, 2025>.
