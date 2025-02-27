-- Using Subqueries in Updates 
-- Exercise : In the sql_store db look at the orders table as you can see some of the orders do not have a comment. write a sql statement to update
--            the comments for orders for customers who have more than 3000 points. So customer with more than 3000 pts regard them as gold customer.
--            Find their orders if they have placed an order. Update the comments column and set it to gold customer.  

USE sql_store;
UPDATE orders
SET comments = "Gold Customer"
WHERE customer_id IN
                  (SELECT customer_id
				   FROM customers
                   WHERE points > 3000 )

