-- The AND, OR and NOT Operators : How to combine multiple search conditions when filtering data
-- NOT, OR Operator

SELECT *
FROM customers
WHERE NOT (birth_date > "1990-01-01" OR points > 1000)








