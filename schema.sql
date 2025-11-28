-- Create database
CREATE DATABASE IF NOT EXISTS superstore;
USE superstore;

-- Customers Table
CREATE TABLE Customers (
    CustomerID VARCHAR(50) PRIMARY KEY,
    CustomerName VARCHAR(100),
    Segment VARCHAR(50),
    Region VARCHAR(50)
);

-- Products Table
CREATE TABLE Products (
    ProductID VARCHAR(50) PRIMARY KEY,
    Category VARCHAR(50),
    SubCategory VARCHAR(50),
    ProductName VARCHAR(255)
);

-- Orders Table
CREATE TABLE Orders (
    OrderID VARCHAR(50),
    OrderDate DATE,
    ShipDate DATE,
    Sales DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(5,2),
    Profit DECIMAL(10,2),
    ProductID VARCHAR(50),
    CustomerID VARCHAR(50),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
