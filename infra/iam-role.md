# IAM for Lambdas

## Role
- Name: CafeTuscaneyLambdaRole
- Trusted entity: Lambda
- Attached managed: AWSLambdaBasicExecutionRole

## Policy (least privilege for DDB)
- Name: CafeTuscaneyDDBAccess
- Access: Get/Put/Update/Query/Scan on:
  - arn:aws:dynamodb:*:*:table/CafeMenu
  - arn:aws:dynamodb:*:*:table/CafeOrders
  - arn:aws:dynamodb:*:*:table/CafeOrders/index/GSI1

Created via AWS Console on <November 10, 2025>.
