-- Cross Joins : It is used to combine or join every record of first table in every record of the second table
-- A real example of using Cross Join is where we have a table of sizes like small, medium, large and table of colours like red, blue, green
-- and then we want to combine all the sizes with all the colors ie., when we use a cross join
-- Now, the query which is written below is an eg. of how to use it.
-- This is an implicit query, if its explicit then the query looks like FROM customers c, products p (without mentioning cross join) it can be 
--                                                                                                        written like this too.)

SELECT 
      c.first_name AS customer,
      p.name AS product
FROM customers c
CROSS JOIN products p
ORDER BY c.customer_id