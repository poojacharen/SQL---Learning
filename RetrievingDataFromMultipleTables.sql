-- Cross Joins : It is used to combine or join every record of first table in every record of the second table
-- Exercise : Do a cross join b/w shippers and products, using the implicit and explicit syntax

-- Explicit syntax metho
SELECT 
      p.name AS product,
      sh.name AS shipper
FROM shippers sh
CROSS JOIN products p
ORDER BY sh.name

-- Implicit syntax method
-- SELECT *
-- FROM shippers sh, products p
-- ORDER BY sh.name
