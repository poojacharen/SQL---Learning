-- The AND, OR and NOT Operators : How to combine multiple search conditions when filtering data
-- We can simplify without using NOT operator

SELECT *
FROM customers
WHERE  birth_date <= "1990-01-01" AND points <= 1000








