# Café Tuscaney (Capstone Project Plan)

**Author:** Tuscaney Carraway
**Project:** Café Tuscaney — customizable café ordering app
---

1) ## Project Description & Purpose

**Problem:** Small cafés that offer highly customizable items (sandwiches, salads, soups, crafted drinks) struggle with slow phone orders and miscommunication.
**Solution:** A simple web app where customers build their order from structured options, see pricing clearly (base + upcharges), add items to a cart, and place an order for pickup. Staff can view and update order status.
**Target Users:** Café customers; café staff/admin.
**What’s interesting/unique:** A full **Build-Your-Own** flow across **Sandwich, Salad, Soup, Drinks,** plus **Combos** and **Sweet Treats** — all options represented in data (DynamoDB) so the UI renders from configuration instead of hardcoding.

**MVP for demo:**

- Customer can create any item from the provided menu options, add to cart, and place an order.
- Cart/Checkout captures name, phone, pickup time; order status page with polling.
- Admin page (protected) to list orders and update status.
---

2) ## Planned Backend

**Stack (Option 2): AWS Lambda + API Gateway + DynamoDB** (TypeScript).

### DynamoDB Tables
Menu (reference/config — drives builders)
- **PK:** ITEM#<category> (e.g., ITEM#sandwich, ITEM#salad, ITEM#soup, ITEM#drink, ITEM#combo, ITEM#sweet)
- **SK:** GROUP#<groupName> or OPTION#<id> depending on pattern
- Attributes (examples): name, type (single|multi), options[] (strings or objects with id, label, priceDelta), basePrice, notes, isAvailable

Orders (header + line items)

- **PK**: ORDER#<orderId>
- **SK:** META# (header) and LINE#<lineId> (line items)
- Header attrs: status (placed|preparing|ready|picked_up), customer{name,phone}, pickupTime, subtotal, tax, total, createdAt.
- Line attrs: kind (sandwich|salad|soup|drink|combo|sweet), selections{...}, quantity, unitPrice, lineTotal.
- **GSI1 (status index):** GSI1PK = STATUS#<status>, GSI1SK = <createdAt>.

(Future Add) Users for staff if needed beyond Cognito.
---

3) ## API Routes & Methods

## Base: /api

### Menu
- GET /menu → Return full menu (all categories, grouped for UI).
- GET /menu/:category → Return one category (e.g., salad).
- (Admin) PUT /menu/:category/:group → Toggle availability or price (protected).

### Orders
- POST /orders → Create order from cart payload; server calculates prices/totals.
- GET /orders/:orderId → Get order for status page.
- (Admin) GET /orders?status=placed → List recent orders by status (protected).
- (Admin) PATCH /orders/:orderId → Update status (protected).

### Auth
- Admin only via Amazon Cognito Hosted UI; customers checkout without auth.

**Validation:** zod on all mutating inputs. Pricing computed on backend.
---

4) ## Frontend Features & Pages

**Stack:** React + Vite + TypeScript + Tailwind + React Router; state via **React Context + useReducer** (no extra store lib).

**Pages**

1. **Home** — intro, CTA buttons for each builder (Sandwich/Salad/Soup/Drink), featured treats.

2. **Builders** — **Build Sandwich / Build Salad / Build Soup / Craft Drink**; dynamic price; add to cart.

3. **Combos** — select pairings; auto-bundle price.

4. **Cart & Checkout** — review items, edit qty, customer info, place order.

5. **Order Status** — enter/orderId param; auto refresh to show status.

6. **Admin (protected)** — list orders by status; update status.