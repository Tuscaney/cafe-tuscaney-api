# ☕ Café Tuscaney (Capstone Project Plan)

**Author:** Tuscaney Carraway

**Project:** Café Tuscaney — customizable café ordering app
---

## (1) 🎯 Project Description & Purpose

**Problem:** Small cafés that offer highly customizable items (sandwiches, salads, soups, crafted drinks) struggle with slow phone orders and miscommunication.
**Solution:** A simple web app where customers build their order from structured options, see pricing clearly (base + upcharges), add items to a cart, and place an order for pickup. Staff can view and update order status.
**Target Users:** Café customers; café staff/admin.
**What’s interesting/unique:** A full **Build-Your-Own** flow across **Sandwich, Salad, Soup, Drinks,** plus **Combos** and **Sweet Treats** — all options represented in data (DynamoDB) so the UI renders from configuration instead of hardcoding.

**MVP for demo:**

- Customer can create any item from the provided menu options, add to cart, and place an order.
- Cart/Checkout captures name, phone, pickup time; order status page with polling.
- Admin page (protected) to list orders and update status.

.
---

## (2) 🛠️ Planned Backend

**Stack (Option 2): AWS Lambda + API Gateway + DynamoDB** (JavaScript).

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

## (3) 🔗 API Routes & Methods

## Base: /api

### 🧾 Menu
- GET /menu → Return full menu (all categories, grouped for UI).
- GET /menu/:category → Return one category (e.g., salad).
- (Admin) PUT /menu/:category/:group → Toggle availability or price (protected).

### 📦 Orders
- POST /orders → Create order from cart payload; server calculates prices/totals.
- GET /orders/:orderId → Get order for status page.
- (Admin) GET /orders?status=placed → List recent orders by status (protected).
- (Admin) PATCH /orders/:orderId → Update status (protected).

### 🔐 Auth
- Admin only via Amazon Cognito Hosted UI; customers checkout without auth.

**Validation:** zod on all mutating inputs. Pricing computed on backend.
---

## (4) 🎨 Frontend Features & Pages

**Stack:** React + Vite + JavaScript + Tailwind + React Router; state via **React Context + useReducer** (no extra store lib).

**Pages**

1. **Home** — intro, CTA buttons for each builder (Sandwich/Salad/Soup/Drink), featured treats.

2. **Builders** — **Build Sandwich / Build Salad / Build Soup / Craft Drink**; dynamic price; add to cart.

3. **Combos** — select pairings; auto-bundle price.

4. **Cart & Checkout** — review items, edit qty, customer info, place order.

5. **Order Status** — enter/orderId param; auto refresh to show status.

6. **Admin (protected)** — list orders by status; update status.

---

## (5) 🔒 Authentication Flow

- **Customers:** No login.
- **Admins: Cognito** (OIDC code flow). API Gateway authorizer protects admin routes.
- **Protected pages:** /admin/*.

---

## (6) 🚀 Deployment Plan

**Frontend:** S3 static hosting + CloudFront (SPA: 404 → /index.html).
**Backend:** AWS Lambda (Node 20) + API Gateway REST.
**Database:** DynamoDB (on-demand).

**Environment Variables**
- **Frontend:** VITE_API_BASE_URL, VITE_COGNITO_USER_POOL_ID, VITE_COGNITO_CLIENT_ID, VITE_COGNITO_DOMAIN.
- **Backend:** TABLE_ORDERS, TABLE_MENU, ALLOWED_ORIGIN.

**Build/Deploy**
- **Frontend:** npm run build → upload dist/ to S3 → CloudFront.
- **Backend:** zip JS handlers (or use SAM/Serverless); deploy; create API stage

---

## (7) 📦 NPM Libraries / Tools

- **Frontend:** react, react-dom, react-router-dom, tailwindcss, React Context + useReducer (no extra package), zod, clsx, axios (or fetch).

- **Backend:** @aws-sdk/client-dynamodb, @aws-sdk/lib-dynamodb, zod, uuid, middy, @middy/http-json-body-parser, @middy/http-cors.

- **Dev:** eslint, prettier, vitest (tests).

---

## (8) 🗂️ Directory Setup

cafe-tuscaney-api/
  ├─ capstone-plan.md
  ├─ README.md
  ├─ src/
  │   ├─ handlers/
  │   │   ├─ getMenu.js
  │   │   ├─ createOrder.js
  │   │   ├─ getOrder.js
  │   │   └─ adminUpdateStatus.js
  │   ├─ lib/{dynamo.js, pricing.js, validation.js}
  │   └─ types/
  └─ package.json


cafe-tuscaney-frontend/
  ├─ README.md
  ├─ index.html
  ├─ src/
  │   ├─ main.tsx, App.jsx
  │   ├─ pages/{Home,BuildSandwich,BuildSalad,BuildSoup,BuildDrink,Combos,Cart,OrderStatus,Admin}.jsx
  │   ├─ components/{OptionGroup,PriceBadge,CartItem}.jsx
  │   ├─ store/CartContext.jsx
  │   └─ lib/api.js
  └─ package.json
  
  .
---

## (9) 💵 Pricing Rules (clear & consistent)

**Sandwich base:** $8.00. Includes: 1 bread, one meat, one cheese, unlimited veggies/condiments.
- **Extra meat:** +$2.00 each.

**Salad base:** $9.00. Includes: 1 lettuce base + any veggies/fruits/herbs.
- **Proteins (listed):** +$2.00 each.
- **Nuts/Seeds:** +$1.00 per type.
- **Cheeses:** first included, additional +$1.00 each.
- **Grains** (quinoa/farro/bulgur/rice): +$1.00 each.

**Soup base:** $6.00 (choose broth + any veg).
- **Proteins:** first included; 2+ proteins: each extra +$3.00 (per brief).

**Drink base:** $2.50 (choose base).
- **Flavors/herbs/spice add-ins:** +$0.50 each; Sparkling: +$0.50.

**Combos (bundle discount off sum of parts):**
- **Sandwich+Salad+Soup+Side:** 10% off (May change)
- **Any two-item combo:** 5% off

**Sweet Treats:** per-item price (see menu seeds). 

All prices computed server-side. Frontend shows live estimate using same rule constants.
--- 

## (10) 📚 Data Dictionary & Full Menu (drives UI)

Below is a compact representation for seeding Menu. Each category exposes groups with type: single|multi and optional priceDelta for paid add-ons.

## 🥪 Sandwich
- **Bread (single):** Wheat, White, Italian, Sourdough (toasted flag boolean)
- **Meat (single + multi for extras):** Chicken, Turkey, Roast Beef, Steak (extra +$2 each)
- **Cheese (single):** American, Pepper Jack, Swiss, Provolone, Mozzarella, Cheddar
- **Lettuce (single):** Iceberg, Kale, Spinach, Butter
- **Veggies (multi):** Tomato, Cucumber, Onion
- **Condiments (multi):** Mayo, Spicy Mayo, Mustard, Sweet Mustard, Spicy Mustard, Italian Dressing, Ranch Dressing

## 🥗 Salad
**Lettuce Base (single):** Iceberg, Kale, Spinach, Butter, Arugula
**Veggies (multi):** Croutons, Onions, Cucumbers, Bell Peppers, Carrots, Broccoli
**Fruits (multi):** Berries, Grapes, Apples, Pears, Peaches, Mandarin Oranges, Avocado, Tomato, Pineapple, Olives, Dried: Cranberries, Raisins, Cherries, Mango
**Proteins (multi, +$2 each)**
- **Meat/Poultry:** Grilled Chicken, Turkey, Steak, Ham, Bacon, Tuna, Salmon
- **Vegetarian:** Hard-Boiled Eggs, Black Beans, Chickpeas, Edamame, Tofu, Falafel, Lentils
**Nuts (multi, +$1 each):** Almonds, Walnuts, Pecans, Pistachios, Peanuts
**Seeds (multi, +$1 each):** Sunflower, Pepitas, Chia, Hemp Hearts
**Cheeses (multi; first free, extras +$1)**
- **Crumbled/Soft:** Feta, Goat Cheese, Bleu Cheese, Burrata
- **Shredded/Hard:** Parmesan, Cheddar, Mozzarella
**Other Additions (multi, +$1 each):** Grains (Quinoa, Farro, Bulgur, Rice), Crunchy (Croutons, Tortilla Chips, Water Chestnuts), Fresh Herbs (Dill, Basil, Parsley, Chives, Mint)

## 🍲 Soup
**Broth (single):** Chicken, Turkey, Beef, Vegetable, Fish
**Proteins (multi):** Meat/Poultry (Grilled Chicken, Turkey, Steak, Ham, Bacon, Tuna, Salmon); Vegetarian (Hard-Boiled Eggs, Black Beans, Chickpeas, Edamame, Tofu, Falafel, Lentils) — 2+ proteins add +$3 each
**Vegetables (multi):**
- **Flavor Base:** Onions, Garlic, Celery, Carrots, Leeks
- **Root:** Potatoes, Sweet Potatoes, Parsnips, Turnips, Rutabaga
- **Leafy Greens:** Spinach, Kale, Chard, Cabbage, Bok Choy
- **Squash & Gourds:** Butternut, Zucchini, Yellow Squash, Pumpkin
- **Cruciferous:** Broccoli, Cauliflower, Brussels Sprouts
- **Legumes:** Green Beans, Peas, Corn, Lentils, Chickpeas, Cannellini Beans
- **Other:** Tomatoes, Bell Peppers, Mushrooms, Asparagus, Okra

## 🍱 Combos
- Sandwich + Salad + Soup + Side
- Sandwich + Salad
- Sandwich + Soup
- Sandwich + Side
- Salad + Soup
- Salad + Side
- Soup + Side

## 🧋 Drinks (Craft Your Own)

**Base (single):** Lemonade, Tea, Coffee, Flavored Water
**Flavors (multi, +$0.50 each)**
- **Fruit:** Strawberry, Raspberry, Blueberry, Blackberry, Peach, Cherry, Apricot, Mango, Pineapple, Coconut, Passion Fruit, Watermelon, Grape, Kiwi, Rhubarb
- **Herbs/Flowers:** Mint, Lavender, Basil, Rosemary, Hibiscus, Rose, Chamomile
- **Other:** Ginger, Vanilla, Cinnamon, Cardamom, Sichuan Peppercorns
- **Modifier:** Sparkling (+$0.50)

## 🍰 Sweet Treats (each item has own price)
**Cookies:** Chocolate Chip, Shortbread/Sugar, Oatmeal, Peanut Butter

**Cakes:** Lemon, Butter, Chocolate, Red Velvet

**Cinnamon Rolls:** Traditional, Chocolate, Strawberry Shortcake

**Cheesecake Toppings:** Strawberry, Chocolate

**Tarts:** Strawberry, Lemon, Chocolate

**Muffins:** Blueberry, Strawberry, Chocolate, Banana, Poppyseed

Seed JSON will mirror the above groups with id, label, and optional priceDelta fields.

## (11) 🧭 Milestones & Commit Flow (mimic human development)

1. docs(plan): add capstone plan with full menu & architecture
2. feat(web): scaffold Vite+Tailwind, routes & navbar
3. feat(api): scaffold lambdas (getMenu, createOrder, getOrder)
4. feat(api): Dynamo tables + seed Menu; wire CORS
5. feat(web): implement builders (sandwich, salad, soup, drink)
6. feat(web): cart & checkout → POST /orders
7. feat(api): pricing engine & combos discounts
8. feat(web): order status page (polling)
9. feat(admin): Cognito + admin orders dashboard
10. chore(deploy): S3+CloudFront, API Gateway stage
11. test: add 2+ automated tests (pricing calc, order payload)
12. docs: update READMEs with URLs & 
