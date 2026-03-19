--1️⃣Total revenue generated
SELECT ROUND(SUM(revenue),2) AS total_revenue
FROM sales;

--2️⃣Top selling products
SELECT 
p.product_name,
ROUND(SUM(s.revenue),2) AS total_sales
FROM sales s
JOIN products p 
ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC;

--3️⃣Best performing stores
SELECT 
st.store_name,
ROUND(SUM(s.revenue),2) AS total_sales
FROM sales s
JOIN stores st 
ON s.store_id = st.store_id
GROUP BY st.store_name
ORDER BY total_sales DESC;

--4️⃣Monthly sales trend
SELECT 
c.year,
c.month,
ROUND(SUM(s.revenue),2) AS monthly_sales
FROM sales s
JOIN calendar c 
ON s.order_date = c.date
GROUP BY c.year, c.month
ORDER BY c.year, c.month;

--5️⃣Top customers
SELECT 
c.customer_id,
ROUND(SUM(s.revenue),2) AS total_spent
FROM sales s
JOIN customers c 
ON s.customer_id = c.customer_id
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 10;

--6️⃣Sales by category
SELECT 
p.category,
ROUND(SUM(s.revenue),2) AS total_sales
FROM sales s
JOIN products p 
ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY total_sales DESC;

--7️⃣Total Profit
SELECT 
ROUND(SUM(profit),2) AS total_profit
FROM sales;

--8️⃣Discound impact analysis
SELECT 
discount,
ROUND(SUM(revenue),2) AS total_sales
FROM sales
GROUP BY discount
ORDER BY total_sales DESC;