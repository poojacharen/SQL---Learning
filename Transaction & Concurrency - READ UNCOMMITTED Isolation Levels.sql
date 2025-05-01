-- READ UNCOMMITTED Isolation Level
-- Opened two instances which is "New Instance" and the "Local Instance"
-- In the "New Instance" typed the below code and moving to the "Local Instance"
-- Wrote the code in the "Local Instance"
-- Now before executing we need to look at the customers table and see how many points this customer has in the "local Instance"
-- Coming back to the "New Instance" executing by using the shortcut in line 9, line 10, leave the remaining lines just like that without executing. 
-- And go back to the "Local Instance" execute line 1, 2, 3 and come to the "New Instance" and execute line 11

USE sql_store;
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SELECT points
FROM customers
WHERE customer_id = 1;

-- Recap :
-- Read uncommitted is the lowest isolation level and in this level we cann experience all concurrency problems  

-- Local Instance
USE sql_store;
START TRANSACTION;
UPDATE customers
SET points = 20
WHERE customer_id = 1;
COMMIT;
