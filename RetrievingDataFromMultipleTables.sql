-- Unions : We can combine records from multiple queries
-- Method 2 : We combining queries with multiple table

SELECT first_name
FROM customers
UNION
SELECT name
FROM shippers