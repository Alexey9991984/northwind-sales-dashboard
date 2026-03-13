# Northwind Sales Dashboard

## Project Overview

This project analyzes sales data from the Northwind database using SQL and Power BI.

The goal is to identify top customers, best-selling products, and revenue trends.

## Tools

* PostgreSQL
* SQL
* Power BI

## Key Metrics

* Total Revenue
* Top 10 Customers by Revenue
* Top 5 Products by Revenue
* Monthly Sales Trend

## Dashboard

![Dashboard](images/dashboard.png)

## Example SQL Query

```sql
SELECT 
    c.company_name,
    SUM(od.quantity * od.unit_price * (1 - od.discount)) AS revenue
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
JOIN order_details od 
    ON o.order_id = od.order_id
GROUP BY c.company_name
ORDER BY revenue DESC;
```

## Insights

* A small group of customers generates the largest revenue.
* A few products dominate total sales.
* Sales trend shows steady growth over time.

