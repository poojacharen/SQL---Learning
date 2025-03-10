-- The CASE Operator
-- It's used when we have multiple expressions to test

USE sql_store;
SELECT 
     order_id,
     CASE 
         WHEN YEAR(order_date) = YEAR(NOW()) THEN "Active"
         WHEN YEAR(order_date) = YEAR(NOW()) -1 THEN "Last Year"
         WHEN YEAR(order_date) < YEAR(NOW()) -1 THEN "Archived"
         ELSE "Future"
	END AS category
FROM orders