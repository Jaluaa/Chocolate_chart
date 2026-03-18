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

- Certain products contribute significantly to total revenue
- A few stores generate the majority of sales
- Sales show variation across different months
- Top customers play an important role in revenue generation

---

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
