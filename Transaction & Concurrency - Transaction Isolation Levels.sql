-- Transaction Isolation Levels 
-- In the current instance which is "Local Instance"

SHOW VARIABLES LIKE 'transaction_isolation';   -- so the current transaction isolation is in repeatable-read(ie., after executing) this is a default in MySQL
SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE;	-- to change the transaction isolation level 
