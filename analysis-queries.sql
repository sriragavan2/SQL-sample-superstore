1. Total Sales
SELECT SUM(Sales) AS TotalSales FROM Orders;

-- 2. Total Profit
SELECT SUM(Profit) AS TotalProfit FROM Orders;

-- 3. Sales by Region
SELECT c.Region, SUM(o.Sales) AS Sales
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.Region
ORDER BY Sales DESC;

-- 4. Top 5 Products by Sales
SELECT p.ProductName, SUM(o.Sales) AS TotalSales
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalSales DESC
LIMIT 5;

-- 5. Monthly Sales Trend
SELECT
    DATE_FORMAT(OrderDate, '%Y-%m') AS Month,
    SUM(Sales) AS MonthlySales
FROM Orders
GROUP BY Month
ORDER BY Month;

-- 6. Profit Ratio by Category
SELECT
    p.Category,
    SUM(o.Profit) / SUM(o.Sales) AS ProfitRatio
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY p.Category
ORDER BY ProfitRatio DESC;