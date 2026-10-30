# 🧠📊 DATA DIGGER — SQL Database Project

> 🗄️ A beginner-friendly SQL database project using MySQL to manage customers, orders, products, and order details.

---

## 🌟 Project Overview

**Data Digger** is a database management project developed using SQL. It helps store and manage customer information, order records, product details, and order transactions.

This project demonstrates important SQL concepts such as database creation, table creation, primary keys, foreign keys, data insertion, data retrieval, updating, deleting, sorting, filtering, and aggregate functions.

---

## 🎯 Project Objectives

- 🏗️ Create a database named `Data_Digger`.
- 👥 Store customer information.
- 🛒 Manage customer orders.
- 📦 Maintain product details and stock.
- 🧾 Store order details, quantities, and subtotals.
- 🔍 Retrieve records using SQL queries.
- ✏️ Perform INSERT, UPDATE, and DELETE operations.
- 📈 Analyze data using aggregate functions.

---

## 🛠️ Technologies Used

- 💻 **Database:** MySQL
- 🗃️ **Language:** SQL
- ⚙️ **Concepts:** DDL, DML, Primary Key, Foreign Key, Aggregate Functions

---

## 🗂️ Database Structure

This project contains **4 main tables**:

| No. | Table Name | Description |
|---|---|---|
| 1️⃣ | `customers` | Stores customer ID, name, email, and address. |
| 2️⃣ | `orders` | Stores order ID, customer ID, order date, and total amount. |
| 3️⃣ | `products` | Stores product ID, product name, price, and stock. |
| 4️⃣ | `order_details` | Stores order details, product ID, quantity, and subtotal. |

---

## 🔗 Table Relationships

- 👤 One customer can have multiple orders.
- 🛒 An order can contain multiple order-detail records.
- 📦 A product can appear in multiple order-detail records.
- 🔐 `Customer_id` is the Primary Key in the Customers table.
- 🔐 `order_id` is the Primary Key in the Orders table.
- 🔐 `product_id` is the Primary Key in the Products table.
- 🔗 Foreign Keys connect the related tables.

### 🧩 Relationship Diagram

```text
CUSTOMERS
    |
    | Customer_id
    |
    v
 ORDERS
    |
    | order_id
    |
    v
ORDER_DETAILS
    ^
    |
    | product_id
    |
 PRODUCTS
```

---

## 📋 SQL Queries Covered

### 👥 1. Customers Table

- 📄 Retrieve all customer details.
- ✏️ Update a customer's address.
- 🗑️ Delete a customer using Customer ID.
- 🔍 Display customers whose name is Sumit.

### 🛒 2. Orders Table

- ➕ Insert at least 5 sample orders.
- 🔍 Retrieve orders made by a specific customer.
- ✏️ Update an order's total amount.
- 🗑️ Understand how to delete an order.
- 📅 Retrieve orders placed in the last 30 days.
- 📊 Find the highest, lowest, and average order amount.

### 📦 3. Products Table

- ➕ Insert at least 5 sample products.
- 🔽 Display products in descending order of price.
- ✏️ Update the price of a specific product.
- 🗑️ Delete products that are out of stock.
- 💰 Retrieve products whose price is between 500 and 20,000.
- 📈 Find the most expensive and cheapest product.

### 🧾 4. Order Details Table

- ➕ Insert at least 5 sample records.
- 🔍 Retrieve details for a specific order.
- 💵 Calculate total revenue using SUM().
- 🏆 Retrieve the top 3 most ordered products.
- 🔢 Count how many times a specific product has been sold.

---

## 🧠 SQL Concepts Practiced

| SQL Command / Function | Purpose |
|---|---|
| `CREATE DATABASE` | Creates a database. |
| `CREATE TABLE` | Creates a table. |
| `PRIMARY KEY` | Uniquely identifies each record. |
| `FOREIGN KEY` | Connects related tables. |
| `INSERT INTO` | Inserts new records. |
| `SELECT` | Retrieves data. |
| `UPDATE` | Modifies existing records. |
| `DELETE` | Deletes records. |
| `WHERE` | Filters records. |
| `ORDER BY` | Sorts records. |
| `BETWEEN` | Filters a range of values. |
| `MAX()` | Finds the maximum value. |
| `MIN()` | Finds the minimum value. |
| `AVG()` | Calculates the average. |
| `SUM()` | Calculates the total. |
| `COUNT()` | Counts records. |
| `GROUP BY` | Groups records. |
| `LIMIT` | Limits the number of results. |
| `INTERVAL` | Works with date ranges. |

---

## 🚀 How to Run the Project

1. 💻 Open MySQL Workbench.
2. 📂 Open your SQL project file.
3. ▶️ Execute the SQL script from top to bottom.
4. 🗄️ The `Data_Digger` database will be created.
5. 📊 Four tables will be created with sample records.
6. 🔍 Execute the SELECT queries to view the results.

---

## ⚠️ Important Notes

- 🔁 The script uses `CREATE TABLE IF NOT EXISTS`, so existing tables will not be recreated.
- ⚠️ Running the INSERT statements more than once may cause duplicate Primary Key errors.
- 🔗 Foreign Key constraints maintain relationships between the tables.
- 🗑️ A customer or product cannot be deleted while related records still reference it.
- 📅 The last 30 days query depends on the current date.
- 💡 Run the SQL statements in the correct order to avoid errors.

---

## 📊 Project Features

- 👥 Customer Management
- 🛒 Order Management
- 📦 Product Management
- 🧾 Order Details Management
- 🔍 Data Filtering and Sorting
- 📈 Aggregate Data Analysis
- 🔐 Primary Key and Foreign Key Relationships

---

## 🎓 Learning Outcomes

Through this project, I practiced:

- Understanding relational databases.
- Creating databases and tables using SQL.
- Working with Primary Keys and Foreign Keys.
- Performing CRUD operations.
- Writing SQL queries with conditions.
- Using aggregate functions.
- Sorting, filtering, and grouping data.
- Understanding relationships between database tables.

---

## connect with me:

  Linkedin : www.linkedin.com/in/nisha-sonkusre-283526415
  g-mail : nishasonkusre07@gmail.com

## 👩‍💻 Project Information

- **Project Name:** Data Digger
- **Database Name:** `Data_Digger`
- **Database:** MySQL
- **Language:** SQL
- **Total Tables:** 4

---

## ⭐ Thank You!

Thank you for visiting my **Data Digger SQL Project**!

💙 Keep Learning | 🚀 Keep Practicing | 📊 Keep Exploring SQL!
