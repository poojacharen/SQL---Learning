-- There are two basic rules :- 
-- First Rule : it says that we should order our columns such that the columns are used more frequently comes first
-- eg: if we have 5 queries and all or most of the queries look up customers by state, it makes sense to put the state column first because this can help narrow down our searches
-- Second Rule : it says that we should put the columns with higher cardinality first. 
--               Cardinality represents the number of unique values in the index. For eg: in the primary key our cardinality is 1010, so we have 1010 unique values in this column
--               Now think of a column like gender, what is cardinality or the number of unique values in this column? It's two, either have 0 or 1

-- Few eg's
-- Let's say we need cstomers who is located in 'CA' and whose last names start with 'A'. Which column should first come in our index

USE sql_store;
EXPLAIN SELECT customer_id
FROM customers
USE INDEX (idx_state_last_name)
WHERE last_name LIKE 'A%';

DROP INDEX idx_last_name_state ON customers;

CREATE INDEX idx_last_name_state ON customers(state, last_name);
