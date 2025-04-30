-- The CASE Operator
-- Exercise : if a customer has more than 3000 points classify them as Gold customers, if they have bet 2000 and 3000 classify them as Silver
--          customers, otherwise of they have less than 2000 classify them as Bronze customers. Three cols (customer, points, category)

USE sql_store;
SELECT 
     CONCAT(first_name, ' ', last_name) AS customer,
     points,
     CASE 
         WHEN points > 3000 THEN "Gold"
         WHEN points BETWEEN 2000 AND 3000 THEN "Silver"
         WHEN points < 2000 THEN "Bronze"
	 END AS medals
FROM customers
     
