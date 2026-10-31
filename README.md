# 🗃️ Data Digger --- SQL Database Management Project

> **Explore data. Organize records. Discover insights.**\
> A MySQL project demonstrating relational database management through
> customer, order, product, and order-detail data.

------------------------------------------------------------------------

## 📌 Project Overview

**Data Digger** is a database project developed using **MySQL**. It
provides a structured way to store and work with customer information,
customer orders, product details, and the products included in each
order.

The project is designed to practice essential SQL concepts through a
practical example. It includes database and table creation, sample data
insertion, data modification, filtering, sorting, aggregate
calculations, and joins between related tables.

## 🎯 Project Objectives

-   👥 Maintain customer information in a structured format
-   🧾 Store and retrieve customer order records
-   📦 Manage product names, prices, and stock quantities
-   🛒 Record products and quantities associated with each order
-   🔗 Connect related tables using primary and foreign keys
-   📊 Analyze order and product data using SQL queries
-   🧠 Build confidence with MySQL commands and relational database
    concepts

## 🧰 Technologies Used

  Technology           Purpose
  -------------------- -----------------------------------------------------------
  🐬 MySQL             Creating and managing the relational database
  🖥️ MySQL Workbench   Writing and executing SQL queries
  🧾 SQL               Defining tables, manipulating records, and analyzing data

## 🗂️ Database Information

-   **Database Name:** `data_digger`
-   **Database Type:** Relational Database
-   **Tables:** 4
-   **Primary Language:** SQL

## 🧱 Database Tables

### 1. 👥 Customers

Stores basic customer details.

  Column         Description
  -------------- --------------------------------------------
  `CustomerID`   Unique customer identifier and primary key
  `Name`         Customer name
  `Email`        Customer email address
  `Address`      Customer location/address

### 2. 🧾 Orders

Stores order information for customers.

  Column          Description
  --------------- --------------------------------------------
  `OrderID`       Unique order identifier and primary key
  `CustomerID`    Customer who placed the order; foreign key
  `OrderDate`     Date the order was placed
  `TotalAmount`   Total amount recorded for the order

### 3. 📦 Products

Stores product and inventory information.

  Column          Description
  --------------- -------------------------------------------
  `ProductID`     Unique product identifier and primary key
  `ProductName`   Name of the product
  `Price`         Product price
  `Stock`         Available stock quantity

### 4. 🛍️ OrderDetails

Stores the products and quantities associated with orders.

  Column            Description
  ----------------- ------------------------------------------------
  `OrderDetailID`   Unique order-detail identifier and primary key
  `OrderID`         Related order; foreign key
  `ProductID`       Related product; foreign key
  `Quantity`        Number of units ordered
  `SubTotal`        Subtotal recorded for the order-detail row

## 🔗 Entity Relationships

The database connects its tables through key constraints:

-   `Customers` → `Orders`: one customer can be associated with multiple
    orders.
-   `Orders` → `OrderDetails`: one order can contain multiple
    order-detail records.
-   `Products` → `OrderDetails`: a product can appear in multiple
    order-detail records.

``` text
Customers
   │
   └── CustomerID
          │
          ▼
        Orders
          │
          └── OrderID
                 │
                 ▼
             OrderDetails
                 ▲
                 │ ProductID
              Products
```

**Primary Keys (PK)** uniquely identify records. **Foreign Keys (FK)**
connect records across related tables and help maintain referential
integrity.

## 🛠️ SQL Concepts Demonstrated

### 🏗️ Database and Table Creation

-   `CREATE DATABASE`
-   `USE`
-   `CREATE TABLE`
-   `PRIMARY KEY`
-   `FOREIGN KEY`

### ✍️ Data Manipulation

-   `INSERT INTO` --- add records
-   `UPDATE` --- modify existing records
-   `DELETE` --- remove selected records

### 🔍 Data Retrieval

-   `SELECT`
-   `WHERE`
-   `BETWEEN`
-   `ORDER BY`
-   `LIMIT`

### 📈 Aggregate Functions

-   `MAX()` --- find the maximum value
-   `MIN()` --- find the minimum value
-   `AVG()` --- calculate an average
-   `SUM()` --- calculate a total
-   `COUNT()` --- count matching records

### 🧩 Grouping and Joining

-   `GROUP BY` --- summarize records by category or identifier
-   `JOIN` --- retrieve related information from multiple tables

### 📅 Date Filtering

-   `CURDATE()`
-   `INTERVAL`
-   Date comparison conditions

## 📊 Query Examples Included

The SQL file includes queries to:

-   Display all customer, order, product, and order-detail records
-   Find a customer by name
-   Update a customer's address
-   Retrieve orders for a specific customer
-   Update an order amount
-   Delete a selected order
-   Filter recent orders using a date condition
-   Calculate highest, lowest, and average order amounts
-   Display products sorted by price
-   Update a product's price
-   Delete products with zero stock
-   Find products within a price range
-   Calculate total revenue from order-detail subtotals
-   Find the top three products by ordered quantity
-   Count how many times a product appears in order details
-   Join customer information with order information
-   Join product information with order-detail records

## 🚀 How to Run the Project

1.  Install **MySQL Server** and **MySQL Workbench**.
2.  Start the MySQL Server service.
3.  Open MySQL Workbench and connect to your local server.
4.  Open the `Data_Digger.sql` script.
5.  Review the SQL statements before execution.
6.  Execute the script using the query editor.
7.  Check the result grids to view the returned records.
8.  Explore or modify the queries to practice SQL.

## 📁 Project Files

``` text
Data-Digger/
│
├── Data_Digger.sql    # Database creation, sample data, and SQL queries
└── README.md          # Project documentation
```

## ⚠️ Important Note Before Running

The SQL script starts by dropping and recreating the database:

``` sql
DROP DATABASE IF EXISTS data_digger;
CREATE DATABASE data_digger;
```

This means an existing database named `data_digger` will be deleted and
recreated when the script runs. **Back up any important data before
executing the script.**

## 🌱 Learning Outcomes

After working with this project, learners can practice:

-   Designing a relational database with multiple tables
-   Creating primary-key and foreign-key relationships
-   Performing CRUD operations
-   Filtering and sorting records
-   Using aggregate functions for data summaries
-   Grouping records and joining related tables
-   Understanding how customer, order, and product data are connected
-   Executing SQL scripts in MySQL Workbench

## 🔮 Possible Future Enhancements

The project can be extended with:

-   📊 More analytical queries and reports
-   🧮 Additional order and inventory summaries
-   🧑‍💼 More customer and product sample records
-   🗓️ Monthly or yearly order analysis
-   🧾 Views for frequently used reports
-   ⚙️ Stored procedures for repeated operations

## 👩‍💻 Project Details

  Detail         Information
  -------------- ----------------------------------------------
  Project Name   Data Digger
  Project Type   MySQL Database Project
  Domain         Customer, Order & Product Management
  Database       MySQL
  Tool           MySQL Workbench
  Main Focus     SQL queries and relational database concepts

------------------------------------------------------------------------

## connect with me:

  Linkedin : www.linkedin.com/in/nisha-sonkusre-283526415
  g-mail : nishasonkusre07@gmail.com

### ✨ Thank You for Visiting!

