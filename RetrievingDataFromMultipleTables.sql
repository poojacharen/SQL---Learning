-- Natural Joins : It's not recommended as it gives unexpected results

USE sql_store;
SELECT 
      o.order_id,
      c.first_name
FROM orders o
NATURAL JOIN customers c


