-- SQLBook: Code
DROP DATABASE IF EXISTS data_digger;

CREATE DATABASE data_digger;

USE data_digger;
-- SQLBook: Code
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100),
    Address VARCHAR(150)
);
-- SQLBook: Code
INSERT INTO Customers VALUES
(101, 'Alice', 'alice@gmail.com', 'Surat'),
(102, 'Bob', 'bob@gmail.com', 'Ahmedabad'),
(103, 'John', 'john@gmail.com', 'Mumbai'),
(104, 'Priya', 'priya@gmail.com', 'Vadodara'),
(105, 'Rahul', 'rahul@gmail.com', 'Rajkot');

-- SQLBook: Code
SELECT * FROM Customers;
-- SQLBook: Code
UPDATE Customers
SET Address = 'Pune'
WHERE CustomerID = 101;
-- SQLBook: Code
SELECT * FROM Customers
WHERE Name = 'Alice';
-- SQLBook: Code
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
-- SQLBook: Code
USE data_digger;

SELECT * FROM Customers;
-- SQLBook: Code
INSERT INTO Orders
(OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
(201, 101, '2026-07-01', 150),
(202, 102, '2026-07-02', 200),
(203, 103, '2026-08-25', 500),
(204, 104, '2026-08-20', 600),
(205, 105, '2026-08-05', 700);
-- SQLBook: Code
SELECT * FROM Orders;
-- SQLBook: Code
SELECT * FROM Orders
WHERE CustomerID = 101;
-- SQLBook: Code
UPDATE Orders
SET TotalAmount = 1800.00
WHERE OrderID = 201;
-- SQLBook: Code
DELETE FROM Orders
WHERE OrderID = 205;
-- SQLBook: Code
SELECT * FROM Orders
WHERE OrderDate >= CURDATE() - INTERVAL 30 DAY;
-- SQLBook: Code
SELECT MAX(TotalAmount) AS Highest_Order
FROM Orders;
-- SQLBook: Code
SELECT MIN(TotalAmount) AS Lowest_Order
FROM Orders;

-- SQLBook: Code
SELECT AVG(TotalAmount) AS Average_Order
FROM Orders;
-- SQLBook: Code
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT
);
-- SQLBook: Code
INSERT INTO Products VALUES
(301, 'Laptop', 55000.00, 10),
(302, 'Mobile Phone', 15000.00, 20),
(303, 'Headphones', 1200.00, 15),
(304, 'Keyboard', 800.00, 0),
(305, 'Mouse', 500.00, 25);
-- SQLBook: Code
SELECT * FROM Products;
-- SQLBook: Code
SELECT * FROM Products
ORDER BY Price DESC;
-- SQLBook: Code
UPDATE Products
SET Price = 1300.00
WHERE ProductID = 303;
-- SQLBook: Code
DELETE FROM Products
WHERE Stock = 0;
-- SQLBook: Code
SELECT * FROM Products
WHERE Price BETWEEN 500 AND 2000;
-- SQLBook: Code
SELECT MAX(Price) AS Most_Expensive
FROM Products;
-- SQLBook: Code
SELECT MIN(Price) AS Cheapest
FROM Products;
-- SQLBook: Code
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    SubTotal DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
-- SQLBook: Code
INSERT INTO OrderDetails VALUES
(401, 201, 301, 1, 2000),
(402, 202, 302, 2, 3000),
(403, 203, 303, 2, 4000),
(404, 204, 305, 3, 5000),
(405, 201, 302, 1, 6000);
-- SQLBook: Code
SELECT * FROM OrderDetails;
-- SQLBook: Code
SELECT * FROM OrderDetails
WHERE OrderID = 201;
-- SQLBook: Code
SELECT SUM(SubTotal) AS Total_Revenue
FROM OrderDetails;
-- SQLBook: Code
SELECT ProductID, SUM(Quantity) AS Total_Ordered
FROM OrderDetails
GROUP BY ProductID
ORDER BY Total_Ordered DESC
LIMIT 3;
-- SQLBook: Code
SELECT COUNT(*) AS Times_Sold
FROM OrderDetails
WHERE ProductID = 302;
-- SQLBook: Code
SELECT
    Customers.Name,
    Orders.OrderID,
    Orders.OrderDate,
    Orders.TotalAmount
FROM Customers
JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
-- SQLBook: Code
SELECT
    Products.ProductName,
    OrderDetails.Quantity,
    OrderDetails.SubTotal
FROM Products
JOIN OrderDetails
ON Products.ProductID = OrderDetails.ProductID;