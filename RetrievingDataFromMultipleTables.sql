-- Implicit Join Syntax : This method is not recommended

SELECT *
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
    
-- Implicit Join Syntax
-- SELECT *
-- FROM orders o, customers c
-- WHERE o.customer_id = c.customer_id   
-- This method is not suggested because when we accidently forget the where clause then we will get a cross join. 
-- Cross join means that when we forget where clause then every record in the orders and customer table will be cross joined. There will be 100 rec.

