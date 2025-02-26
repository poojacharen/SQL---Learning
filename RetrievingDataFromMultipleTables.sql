-- Unions : We can combine records from multiple queries
-- Method 1 : We combined queries with same table

SELECT 
      order_id,
      order_date,
      "Active" AS status
FROM orders
WHERE order_date >= "2019-01-01" 
UNION
SELECT 
      order_id,
      order_date,
      "Archived" AS status
FROM orders
WHERE order_date < "2019-01-01"