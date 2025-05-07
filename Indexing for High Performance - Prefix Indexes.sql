-- Prefix Indexes
-- Now in the column if we want to create an index on is a string column, like CHAR, VARCHAR, TEXT, BLOB our index may consume a lot of this space
-- and it won't perform well. 
-- Smaller indexes are better because they can fit in memory and this make our searches faster. 
-- So, when indexing string columns we don't want to include the entire column in the index, we only want to include the first few characters or 
-- the prefix of the column so our index will be smaller

-- Let's say we want to create index on the last_name column in the customers table :-

CREATE INDEX idx_last_name ON customers (last_name(20)); 

SELECT 
COUNT(DISTINCT LEFT(last_name,1)), 
COUNT(DISTINCT LEFT(last_name,5)) 
FROM customers;
