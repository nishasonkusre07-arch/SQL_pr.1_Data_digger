-- ==========================================
-- PROJECT: DATA DIGGER
-- ==========================================

-- 1. DATABASE CREATION

CREATE DATABASE IF NOT EXISTS Data_Digger;

USE Data_Digger;


-- ==========================================
-- TABLE 1: CUSTOMERS
-- ==========================================

CREATE TABLE IF NOT EXISTS customers (
    Customer_id INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100),
    Address VARCHAR(100)
);

-- Insert Customer Records

INSERT INTO customers VALUES
(1001, 'Sumit', 'smit@yahoo.com', 'Silver complex - Amroli'),
(1002, 'Asha', 'ash@yahoo.com', 'OM Park - Katargam'),
(1003, 'Nisha', 'nishu@yahoo.com', 'Jeel Park - Varyav'),
(1004, 'Ajay', 'ajay@yahoo.com', 'Gopinath soc - Katargam'),
(1005, 'Parth', 'parth@yahoo.com', 'Mohandeep soc - Ambatlavdi');

-- Query 1: Retrieve all customer details

SELECT * FROM customers;

-- Query 2: Update a customer's address

UPDATE customers
SET Address = 'Noida'
WHERE Customer_id = 1001;

-- Query 3: Delete a customer using CustomerID

DELETE FROM customers
WHERE Customer_id = 1005;

-- Query 4: Display customers whose name is Sumit

SELECT * FROM customers
WHERE Name = 'Sumit';


-- ==========================================
-- TABLE 2: ORDERS
-- ==========================================

CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id)
    REFERENCES customers(Customer_id)
);

-- Query 1: Insert at least 5 sample orders

INSERT INTO orders VALUES
(101, 1001, '2026-10-02', 20000),
(102, 1002, '2026-10-05', 25000),
(103, 1003, '2026-10-07', 22000),
(104, 1004, '2026-10-10', 30000),
(105, 1001, '2026-10-15', 35000);

-- Query 2: Retrieve all orders made by a specific customer

SELECT * FROM orders
WHERE customer_id = 1001;

-- Query 3: Update an order's total amount

UPDATE orders
SET total_amount = 30000
WHERE order_id = 102;

-- Query 4: Delete an order using OrderID

-- Run this query only when you want to delete order 105.
-- First delete its related order_details records.

-- Query 5: Retrieve orders placed in the last 30 days

SELECT * FROM orders
WHERE order_date >= CURRENT_DATE - INTERVAL 30 DAY
AND order_date <= CURRENT_DATE;

-- Query 6: Highest, Lowest and Average Order Amount

SELECT
    MAX(total_amount) AS Highest,
    MIN(total_amount) AS Lowest,
    AVG(total_amount) AS Average
FROM orders;


-- ==========================================
-- TABLE 3: PRODUCTS
-- ==========================================

CREATE TABLE IF NOT EXISTS products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);

-- Query 1: Insert at least 5 sample products

INSERT INTO products VALUES
(110, 'Laptop', 94000, 10),
(120, 'Mobile', 32000, 15),
(130, 'Headphones', 2999, 0),
(140, 'Keyboard', 1100, 20),
(150, 'Monitor', 15000, 5);

-- Query 2: Retrieve products sorted by price descending

SELECT * FROM products
ORDER BY price DESC;

-- Query 3: Update the price of a specific product

UPDATE products
SET price = 40000
WHERE product_id = 120;

-- Query 4: Delete products if out of stock

DELETE FROM products
WHERE stock = 0;

-- Query 5: Retrieve products whose price is between 500 and 20000

SELECT * FROM products
WHERE price BETWEEN 500 AND 20000;

-- Query 6: Most expensive and cheapest product

SELECT
    MAX(price) AS Expensive,
    MIN(price) AS Cheap
FROM products;


-- ==========================================
-- TABLE 4: ORDER_DETAILS
-- ==========================================

CREATE TABLE IF NOT EXISTS order_details (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    sub_total DECIMAL(10,2),

    FOREIGN KEY (order_id)
    REFERENCES orders(order_id),

    FOREIGN KEY (product_id)
    REFERENCES products(product_id)
);

-- Query 1: Insert at least 5 sample records

INSERT INTO order_details VALUES
(1, 102, 110, 1, 94000.00),
(2, 102, 120, 2, 64000.00),
(3, 103, 140, 1, 1100.00),
(4, 104, 150, 2, 30000.00),
(5, 105, 110, 1, 94000.00);

-- Query 2: Retrieve all details for a specific order

SELECT * FROM order_details
WHERE order_id = 102;

-- Query 3: Calculate total revenue using SUM()

SELECT
    SUM(sub_total) AS Total_Revenue
FROM order_details;

-- Query 4: Retrieve top 3 most ordered products

SELECT
    product_id,
    SUM(quantity) AS Total_Sold
FROM order_details
GROUP BY product_id
ORDER BY Total_Sold DESC
LIMIT 3;

-- Query 5: Count how many times a specific product has been sold

SELECT
    COUNT(*) AS Total_Sales
FROM order_details
WHERE product_id = 120;


-- ==========================================
-- FINAL: DISPLAY ALL TABLES
-- ==========================================

SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM products;
SELECT * FROM order_details;

-- ==========================================
-- END OF PROJECT
-- ==========================================