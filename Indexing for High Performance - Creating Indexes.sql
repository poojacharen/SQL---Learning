-- Creating Indexes 
-- Let's write a query to get the customers located in California

USE sql_store;
EXPLAIN SELECT customer_id FROM customers WHERE state = 'CA';

CREATE INDEX idx_state ON customers (state);
