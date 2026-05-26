USE superstore_db;

-- KPI 1: Total Revenue
SELECT ROUND(SUM(Sales), 2) AS Total_Revenue
FROM superstore;

-- KPI 2: Total Profit
SELECT ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore;

-- KPI 3: Profit Margin %
SELECT ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) 
       AS Profit_Margin_Percentage
FROM superstore;

-- KPI 4: Total Orders
SELECT COUNT(DISTINCT Order_ID) AS Total_Orders
FROM superstore;

-- KPI 5: Repeat Customers
SELECT COUNT(*) AS Repeat_Customers
FROM (
    SELECT Customer_ID
    FROM superstore
    GROUP BY Customer_ID
    HAVING COUNT(DISTINCT Order_ID) > 1
) AS repeat_table;

-- KPI 6: Average Order Value
SELECT ROUND(SUM(Sales) / COUNT(DISTINCT Order_ID), 2) 
       AS Avg_Order_Value
FROM superstore;
