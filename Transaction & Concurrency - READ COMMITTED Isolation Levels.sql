-- READ COMMITTED Isolation Level


USE sql_store;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
START TRANSACTION;
SELECT points FROM customers WHERE customer_id = 1;
SELECT points FROM customers WHERE customer_id = 1;
COMMIT;

-- Local Instance
USE sql_store;
START TRANSACTION;
UPDATE customers
SET points = 30
WHERE customer_id = 1;
COMMIT;
