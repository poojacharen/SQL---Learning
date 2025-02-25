-- SELECT clause, AS - Alias (Method 1)

SELECT 
     first_name, 
     last_name, 
     points, 
     (points + 10) * 100 AS "discount"  
FROM customers
