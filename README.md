# Chocolate_chart

SQL-based analysis of chocolate sales data to uncover business insights like top products, sales trends, and customer behavior.

# 🍫 Chocolate Sales Data Analysis

## 📌 Project Overview

This project focuses on analyzing chocolate sales data using SQL to extract meaningful business insights. The analysis helps understand sales performance, customer behavior, and product trends.

---

## 🎯 Objectives

- Analyze overall sales performance
- Identify top-selling chocolate products
- Find best-performing stores
- Understand customer purchasing behavior
- Analyze monthly sales trends

---

## 🛠️ Tools & Technologies

- SQL (MySQL Workbench)
- GitHub

---

## 📂 Dataset

The dataset consists of multiple tables:

- `sales` – contains transaction details
- `products` – product information
- `customers` – customer details
- `stores` – store information
- `calendar` – date-related data

---

## 🔍 Key Analysis Performed

### 1. Total Revenue Analysis

Calculated total revenue generated from all sales.

### 2. Top Selling Products

Identified the most popular chocolate products based on total sales.

### 3. Store Performance

Analyzed which stores generate the highest revenue.

### 4. Monthly Sales Trend

Studied how sales change over time.

### 5. Customer Analysis

Found top customers contributing to revenue.

---

## 📊 Sample SQL Query

```sql
SELECT
p.product_name,
SUM(s.sales_amount) AS total_sales
FROM sales s
JOIN products p
ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC;
```

---

## 💡 Key Insights

- The total revenue generated is 10194.08 .This gives a baseline understanding of overall sales performance and will be used to compare product, store, and customer contributions.

- Dark Chocolate 50% is the top-selling product, contributing the highest revenue of 1079.8 . Both mid-range and premium chocolates perform well, indicating diverse customer preferences.

- Chocolate Store 52 leads in total sales, highlighting uneven performance across store locations. This indicates potential opportunities to improve sales strategies in lower-performing stores.

- Sales fluctuate throughout the year, with a peak in May and a sharp drop in June. This indicates possible seasonal trends or external factors affecting customer demand, highlighting opportunities for targeted marketing during low-performing months.

- The top 10 customers show similar spending levels, suggesting a balanced contribution rather than dependency on a single high-value customer. This indicates a stable customer base with multiple revenue contributors.

- Praline is the top-performing category, generating the highest revenue, while White and Dark chocolates show moderate performance and Truffle and Milk lag behind.

- Sales are highest without discounts, and moderate discounts perform better than higher discounts, indicating that heavy discounting is not necessary to drive revenue.

## 🚀 Conclusion

This project demonstrates how SQL can be used to analyze structured data and generate actionable insights for business decision-making.

---

## 📁 Project Structure

```
Chocolate-Sales-Analysis/
│
├── dataset/
├── SQL_queries.sql
└── README.md
```
