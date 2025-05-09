-- Composite Indexes : with this index we can index mutiple columns 

USE sql_store;
SHOW INDEXES IN customers;
EXPLAIN SELECT customer_id FROM customers
WHERE state = 'CA' AND points > 1000;

-- Using composite indexes 

CREATE INDEX idx_state_points ON customers (state, points);
EXPLAIN SELECT customer_id FROM customers
WHERE state = 'CA' AND points > 1000;


-- dropping the customers table
SHOW INDEXES IN customers;
DROP INDEX idx_points ON customers;
