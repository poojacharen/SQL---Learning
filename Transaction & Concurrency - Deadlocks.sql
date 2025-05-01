-- Deadlocks - A deadlock happens when different transactions cannot complete because each transaction holds a lock that the other needs, so both transactions
--             keep waiting for each othet and never release their lock. 

USE sql_store;
START TRANSACTION;
UPDATE customers SET state = 'VA' WHERE customer_id = 1;
UPDATE orders SET status = 1 WHERE order_id = 1;
COMMIT;

-- Local Instance
USE sql_store;
START TRANSACTION;
UPDATE orders SET status = 1 WHERE order_id = 1;
UPDATE customers SET state = 'VA' WHERE customer_id = 1;
COMMIT;
