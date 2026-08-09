-- Sales Analysis Project
-- SQL Analysis Queries

-- 1. View all data
SELECT *
FROM sales;

-- 2. Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM sales;

-- 3. Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM sales;

-- 4. Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 5. Top 10 Products by Sales
SELECT Product_Name, SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- 6. Monthly Sales
SELECT Month, SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Month
ORDER BY Month;
