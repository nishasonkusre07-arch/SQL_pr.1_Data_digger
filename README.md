# 🗄️ Data Digger - SQL Database Project

Welcome to **Data Digger**! 🚀

This project is created to practise SQL using a sample database with customers, orders, products, and order details.

## 📌 Project Overview

**Data Digger** demonstrates how to create tables, insert records, retrieve data, update information, delete records, and use SQL aggregate functions.

## 🧰 Technologies Used

- MySQL 🐬
- SQL 💻
- Relational Database Concepts 🗃️

## 📂 Database Tables

### 1. 👥 Customers
Stores customer details:
- Customer ID
- Name
- Email
- Address

### 2. 🛒 Orders
Stores order information:
- Order ID
- Customer ID
- Order Date
- Total Amount

### 3. 📦 Products
Stores product information:
- Product ID
- Product Name
- Price
- Stock

### 4. 🧾 Order Details
Stores information about products included in orders:
- Order Detail ID
- Order ID
- Product ID
- Quantity
- Subtotal

## ✨ SQL Operations Practised

- 🏗️ `CREATE DATABASE` - create a database
- 🧱 `CREATE TABLE` - create tables
- ➕ `INSERT INTO` - insert records
- 🔍 `SELECT` - retrieve records
- 🎯 `WHERE` - filter records
- ✏️ `UPDATE` - update records
- 🗑️ `DELETE` - delete records
- ↕️ `ORDER BY` - sort records
- 🧮 `SUM()`, `COUNT()`, `MAX()`, `MIN()`, `AVG()` - use aggregate functions
- 🧩 `GROUP BY` - group records
- 🔗 `PRIMARY KEY` and `FOREIGN KEY` - define table relationships

## 🧪 Example Queries

The SQL file includes practice queries to:

- Display all customers.
- Find customers by name.
- Update a customer's address.
- Delete a customer using the customer ID.
- Retrieve orders for a specific customer.
- Find orders placed in the last 30 days.
- Calculate the highest, lowest, and average order amount.
- Sort products by price.
- Find the most expensive and cheapest product.
- Calculate total revenue from order details.
- Find the top three products by quantity ordered.
- Count sales records for a specific product.

## ⚙️ How to Run

1. Open MySQL Workbench or another MySQL editor.
2. Open `Data_digger.sql`.
3. Run the following commands first:

   ```sql
   CREATE DATABASE IF NOT EXISTS Data_Digger;
   USE Data_Digger;
   ```

4. Run the table creation statements.
5. Run the insert statements.
6. Run the queries and view the results. ✅

**Note:** Create the `orders` and `products` tables before creating and inserting records into `order_details`, because `order_details` uses foreign keys.

## 🎯 Learning Outcomes

By completing this project, you can practise:

- Creating and managing a database.
- Performing CRUD operations.
- Filtering and sorting data.
- Using aggregate functions.
- Understanding primary keys and foreign keys.

## connect with me:

  Linkedin : www.linkedin.com/in/nisha-sonkusre-283526415
  g-mail : nishasonkusre07@gmail.com

## 📁 Project File

- `Data_digger.sql` - database tables, sample records, and SQL practice queries.

## 🌟 Conclusion

**Data Digger** is a beginner-friendly project for learning and practising MySQL fundamentals. Keep learning and keep querying! 💻✨

---
⭐ Thanks for checking out this project!
