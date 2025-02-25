-- LIMIT Clause : How to limit no. of records return from the query.
-- eg: 1. LIMIT 3 (gives us 3 customers), 2. LIMIT 300 (gives all customers cos there are no 300 customers),
-- 3. -- page 1: 1 - 3
--    -- page 2: 4 - 6
--    -- page 3: 7 - 9
-- LIMIT 6, 3 (if we want to skip 2 pages and get the 3rd page then limit 6 and 3, here 6 is an offset(which basically tells MySQL to skip the first 6 records and then pick 3 records)

-- Exercise : Get the top three loyal customers

SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3
    
    
	










  










