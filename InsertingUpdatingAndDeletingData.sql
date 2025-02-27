-- Updating Multiple Rows : Syntax is exactly the same as the updating a single rows but the where condition has to be more general
-- Exercise : Write a SQL statement to give any customers born before 1990, 50 extra points

USE sql_store;
UPDATE customers
SET 
   points = point + 50
WHERE birth_date < "1990-01-01"

