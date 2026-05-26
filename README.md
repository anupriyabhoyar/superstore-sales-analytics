# 🛒 Superstore Sales Analytics & Customer Insights

![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow) ![MySQL](https://img.shields.io/badge/MySQL-Database-blue) ![Excel](https://img.shields.io/badge/Excel-Cleaned-green) ![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

## 📌 Project Overview

An end-to-end data analytics project analyzing **9,994 retail transactions** from the Superstore dataset to uncover revenue trends, customer behavior, and profitability insights using SQL, Excel, and Power BI.

## 📂 Dataset Details

| Detail | Info |
|---|---|
| **Name** | Superstore Sales Dataset |
| **Source** | Kaggle |
| **Rows** | 9,994 |
| **Columns** | 21 |
| **Date Range** | 2014 — 2017 |
| **Region** | United States |
| **Industry** | Retail / E-Commerce |
---

## 🎯 Business Problems Solved

| # | Business Question | Answer Found |
|---|---|---|
| 1 | Which products generate the highest revenue? | Technology — $836,154 |
| 2 | Which regions perform best? | West — $108,418 profit |
| 3 | Are discounts reducing profits? | Yes — 50% discount = -$310 avg profit |
| 4 | Which categories are underperforming? | Office Supplies has lowest revenue |
| 5 | What trends exist over time? | Peak sales in November |
| 6 | Which customers contribute the most? | Tamara Chand — highest profit ($8,981) vs Sean Miller — highest spender ($25,043) but negative profit (-$1,980) | 

---

## 🗂️ Project Structure

```
superstore-analytics/
│
├── data/
│   └── Superstore_cleaned.csv       
│
├── sql/
│   ├── create_table.sql          
│   ├── analysis_queries.sql        
│   └── kpi_queries.sql             
│
├── dashboard/
│   └── Superstore_Dashboard.pbix    
│
├── insights/
│   └── Superstore_SQL_Insights.docx
│
└── README.md
```

---

## 🛠️ Tools Used

| Tool | Purpose |
|---|---|
| Excel | Data cleaning & preprocessing |
| MySQL Workbench | Data storage & SQL analysis |
| Power BI Desktop | Interactive dashboard |
| Kaggle | Dataset source |

---

## 📊 Key KPIs

| KPI | Value |
|---|---|
| 💰 Total Revenue | $2,297,201.07 |
| 📈 Total Profit | $286,397.79 |
| 📉 Profit Margin | 12.47% |
| 🛒 Total Orders | 5,009 |
| 👥 Repeat Customers | 781 |
| 🧾 Avg Order Value | $458.61 |

---

## 🔍 SQL Analysis Queries

### 1. Top Revenue Categories
```sql
SELECT Category, SUM(Sales) AS total_sales
FROM superstore_db.superstore
GROUP BY Category
ORDER BY total_sales DESC;
```

### 2. Monthly Revenue Trend
```sql
SELECT MONTH(Order_Date) AS month, SUM(Sales) AS revenue
FROM superstore_db.superstore
WHERE Order_Date IS NOT NULL
GROUP BY month
ORDER BY month;
```

### 3. Regional Analysis
```sql
SELECT Region, SUM(Sales) AS total_sales, SUM(Profit) AS total_profit
FROM superstore_db.superstore
GROUP BY Region
ORDER BY total_profit DESC;
```

### 4. Discount Impact on Profit
```sql
SELECT Discount, AVG(Profit) AS avg_profit, COUNT(*) AS total_orders
FROM superstore_db.superstore
GROUP BY Discount
ORDER BY Discount;
```

### 5. Top 10 Customers
```sql
SELECT Customer_Name, SUM(Sales) AS total_spent, SUM(Profit) AS total_profit
FROM superstore_db.superstore
GROUP BY Customer_Name
ORDER BY total_spent DESC
LIMIT 10;
```

---

## 📈 Dashboard Preview

> Power BI Dashboard includes:
> - 4 KPI Cards (Revenue, Profit, Quantity, Orders)
> - Sales by Category (Bar Chart)
> - Monthly Sales Trend (Line Chart)
> - Regional Performance (Bar Chart)
> - Top 10 Customers (Bar Chart)
> - Discount Impact by Category (Scatter Chart)

---

## 💡 Key Business Insights

1. **Technology** is the highest revenue category at **$836K** — 16% above Furniture
2. **West region** leads in both sales and profit — Central region needs attention
3. **Discounts above 20% generate negative profit** — capping at 20% is recommended
4. **Sean Miller** is the highest spender ($25,043) but generates **negative profit (-$1,980)** — **Tamara Chand** is the truly most valuable customer with $8,981 profit
5. **November** shows the highest monthly revenue — ideal for major campaigns
6. **12.47% profit margin** is below the 20% retail industry average
