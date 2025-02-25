-- The AND, OR and NOT Operators : How to combine multiple search conditions when filtering data
-- OR, AND Operator

SELECT *
FROM customers
WHERE birth_date > "1990-01-01" OR points > 1000 AND
      state = "VA"








