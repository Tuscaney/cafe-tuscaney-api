# ☕ Café Tuscaney — Backend  
Serverless backend designed to support a fully customizable café menu and ordering workflow. Built using **AWS Lambda**, **DynamoDB**, and **API Gateway**.

---

## 🌟 Project Overview
This backend dynamically serves the entire Café Tuscaney menu and securely receives customer orders. It uses a **serverless architecture**, ensuring low cost, automatic scaling, and zero infrastructure maintenance.

The backend powers:

- Menu retrieval  
- Cart calculations  
- Order submission  
- Menu organization logic  
- Ingredient grouping  
- Dynamic pricing (base prices + optional price deltas)

---

## 🚀 Live API Endpoint
🔗 **Base URL:**  
`https://6b6ni0suhd.execute-api.us-east-2.amazonaws.com`

### Endpoints
| Method | Endpoint | Purpose |
|--------|-----------|---------|
| GET | `/menu` | Returns full dynamic menu from DynamoDB |
| POST | `/orders` | Accepts customer order and stores it |
| OPTIONS | all | CORS support |

---

## 🛠️ Technologies Used

### **AWS Services**
- **Lambda** – Business logic for menu + orders  
- **API Gateway** – REST interface for frontend  
- **DynamoDB** – Menu & Orders storage  
- **IAM** – Secure access policies  
- **CloudWatch Logs** – Monitoring  

### **Development Tools**
- Node.js  
- Express-style Lambda handlers  
- JSON schema validation  
- Environment variables for table names  

---

## 📂 Backend Features

### 🍽️ Dynamic Menu API
Menu is stored in DynamoDB in a structured schema:
- Base price  
- Ingredient groups  
- Group type (single vs multi-select)  
- Optional price adjustments  
- Category tags  

Frontend receives the menu and automatically builds the UI.

### 🧺 Orders API
Order payload structure:
```json
{
  "customer": {
    "name": "John Doe",
    "phone": "555-555-5555"
  },
  "items": [...],
  "subtotal": 0,
  "tax": 0,
  "total": 0
}
```

## 🧹 Clean Data Model

- Menu items by category (sandwich, soup, salad, drink, sweet)
- Ingredient grouping logic matches frontend
- Backwards compatible with previous versions

## 🔒 CORS & Security

- API Gateway configured with CORS enabled
- Only POST + GET allowed
- No public write access to DynamoDB
- Lambda-to-DynamoDB via IAM role only

## 📁 Project Structure (Backend)

src/
├── handlers/
│   ├── getMenu.js
│   └── createOrder.js
├── lib/
│   ├── dynamodb.js
│   ├── menuFormatter.js
│   └── validators.js
├── package.json
└── serverless-config (API Gateway + Lambda)

## 🧪 Future Enhancements

- Calculate subtotal/tax/total on backend
- Add item-level pricing rules
- Add order status ("preparing", "ready", etc.)
- Staff dashboard for viewing today's orders
- Admin menu editor (web interface)
- SMS notifications using SNS
- Improved order validation
- Payment integration (Stripe)