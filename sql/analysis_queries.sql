USE superstore_db;

-- Query 1: Top Revenue Categories
SELECT Category,
       SUM(Sales) AS total_sales
FROM superstore
GROUP BY Category
ORDER BY total_sales DESC;

-- Query 2: Monthly Revenue Trend
SELECT MONTH(Order_Date) AS month,
       SUM(Sales) AS revenue
FROM superstore
WHERE Order_Date IS NOT NULL
GROUP BY month
ORDER BY month;

-- Query 3: Regional Analysis
SELECT Region,
       SUM(Sales) AS total_sales,
       SUM(Profit) AS total_profit
FROM superstore
GROUP BY Region
ORDER BY total_profit DESC;

-- Query 4: Discount Impact on Profit
SELECT Discount,
       AVG(Profit) AS avg_profit,
       COUNT(*) AS total_orders
FROM superstore
GROUP BY Discount
ORDER BY Discount;

-- Query 5: Top 10 Customers
SELECT Customer_Name,
       SUM(Sales) AS total_spent,
       SUM(Profit) AS total_profit
FROM superstore
GROUP BY Customer_Name
ORDER BY total_spent DESC
LIMIT 10;
