-- ORDER BY Clause : represents the order 
-- eg : 1. ORDER BY first_name (It arrenges the name in the alpahabetical order), 2. ORDER BY first_name DESC (it arranges in descending order)
-- 3. ORDER BY state, first_name (so its sorted based on the state and their first name in ascending order ie., alphabetical order)
-- 4. ORDER BY state DESC, first_name DESC (it can be written in either way ascending or descending order)
-- 5. SELECT first_name, last_name, 10 AS points
    -- FROM customers
    -- ORDER BY 1, 2 (1, 2 represents first and last name) this should be avoided, instead always sort by first_name(with column names)
    
SELECT *
FROM customers
ORDER BY first_name DESC
    
    
	










  










