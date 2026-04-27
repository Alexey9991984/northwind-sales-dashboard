

SELECT * 
FROM customers c;


--- number of orders and revenue by country

SELECT 
    c.country,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(od.quantity * od.unit_price * (1 - od.discount)) AS revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
GROUP BY c.country
ORDER BY revenue DESC;


--- Top 10 revenue by country and city

SELECT 
    c.country,
	c.city,
    SUM(od.quantity * od.unit_price * (1 - od.discount)) AS revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
GROUP BY c.city, c.country
ORDER BY revenue DESC
LIMIT 10;


--- number of clients by country

SELECT 
    country,
    COUNT(*) AS total_customers
FROM customers
GROUP BY country
ORDER BY total_customers DESC;

