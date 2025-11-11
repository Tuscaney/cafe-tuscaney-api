# DynamoDB Tables (Café Tuscaney)

## CafeMenu
- PK (String): `ITEM#<category>` e.g. ITEM#sandwich, ITEM#salad
- SK (String): `GROUP#<group>` or `OPTION#<group>#<id>`
- Usage: Config-driven menu to power builders (no hardcoded UI).

## CafeOrders
- PK (String): `ORDER#<uuid>`
- SK (String): `META#` (header) and `LINE#0001` (line items)
- GSI1:
  - Name: GSI1
  - GSI1PK (String): `STATUS#<status>` e.g. STATUS#placed
  - GSI1SK (String): ISO timestamp for sort
- Notes: On-demand capacity.

Created via AWS Console on <November 10, 2025>.
