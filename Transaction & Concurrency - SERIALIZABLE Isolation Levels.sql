-- SERIALIZABLE Isolation Level - this provides the highest level of isolation and solves all concurrency problems

USE sql_store;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
START TRANSACTION;
SELECT * FROM customers WHERE state = 'VA';
COMMIT;
 
 
 
-- With SERIALIZABLE Isolation Level we solve all concurrency problems, we don't have phantom reads, we don't have lost updates or dirty reads
-- allconcurrency problems gets resolved because our transactions are executed sequentially one after another. The more users, and the more 
-- concurrent requests we have, the more waits we're going to experience

-- Use SERIALIZABLE isolation level only for situations where you wnat to prevent phantom reads. But not for every transaction in our system. The
-- default isolation and it's repeatbale read works for most scenarios 

-- Local Instance
USE sql_store;
START TRANSACTION;
UPDATE customers
SET state = 'VA'
WHERE customer_id = 3;
COMMIT;
