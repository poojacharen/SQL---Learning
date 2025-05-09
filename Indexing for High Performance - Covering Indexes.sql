-- Covering Indexes - An index that covers everything that a query needs. SO using this index MySQL can execute the query without touching the table

EXPLAIN SELECT customer_id FROM customers
ORDER BY state;

SHOW STATUS LIKE 'last_query_cost';


-- So, when designing our indexes first we need to look at our WHERE clause. Look at the cokumnsthat are most frequently there, include those in our index
-- with this we can narrow down the searches. 
-- Then, we need to look at the column in the ORDER BY clause. See if we can include these column in our index
-- And finally look at the columns used in the SELECT clause. if we include these columns as well then we will get a covering index.
-- So, MySQL can use this index to satisfy our query 
