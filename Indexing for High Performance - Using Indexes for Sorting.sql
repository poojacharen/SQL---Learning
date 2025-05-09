-- Using Indexes for Sorting

SHOW INDEXES IN customers;

-- Let's write a query and sort the customers by their state

EXPLAIN SELECT customer_id FROM customers 
ORDER BY state;
SHOW STATUS LIKE 'last_query_cost';

-- Bsic rule of thumb
-- If we have an index on two columns like (a, b), 
-- we can sort by a
-- we can sort by a, b
-- we can sort by a DESC, b DESC
-- but we cannot miss the directions and also
-- we cannot put a column in a middle a, c, b as this results in the full table scam
-- Now let's see what happens if we sort by the second column of an index ie., b, we'll have an index gap so far so good(while executing), but in the extra column, using index 
-- using filesort. so, this is going to be an expensive query
