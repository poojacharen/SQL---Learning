-- Subqueries Vs Joins
-- Exercise : Find customers who have ordered lettuce (id = 3), Select customer_id, first_name, last_name
-- Write queries using subqueries and join
-- Method 2 : Joins (This method is more readable)

USE sql_store;
SELECT DISTINCT customer_id, first_name, last_name
FROM customers c
JOIN orders o USING (customer_id)
JOIN order_items oi USING (order_id)
WHERE oi.product_id = 3



