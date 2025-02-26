-- Unions : We can combine records from multiple queries
-- Exercise : Write a query to produce the report with customer_id, first_name, points, type
--            less than 2000 points : type - Bronze,  2000 to 3000 points : type - silver,  more than 3000 points : type - gold  

SELECT 
      customer_id,
      first_name,
      points,
      "Bronze" AS type
FROM customers 
WHERE points < 2000
UNION
SELECT 
      customer_id,
      first_name,
      points,
      "Silver" AS type
FROM customers 
WHERE points BETWEEN 2000 AND 3000 
UNION
SELECT 
      customer_id,
      first_name,
      points,
      "Gold" AS type
FROM customers 
WHERE points > 3000
ORDER BY first_name


        