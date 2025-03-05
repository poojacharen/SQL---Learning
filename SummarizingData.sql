-- The HAVING Clause : Here we shouldn't use WHERE clause. 
-- With WHERE Clause : We can filter the data before the rows are grouped
-- With HAVING Clause : We can filter the data after the rows are grouped
-- Exercise : Get the customers located in Virginia who spent more than $100

USE sql_store;
SELECT 
      c.customer_id,
      c.first_name,
      c.last_name,
      SUM(oi.quantity * oi.unit_price) AS total_sales
FROM customers c
JOIN orders o 
    USING (customer_id)
JOIN order_items oi 
    USING (order_id)
WHERE state = "VA"
GROUP BY   c.customer_id,
      c.first_name,
      c.last_name
HAVING total_sales > 100