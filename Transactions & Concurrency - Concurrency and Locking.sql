-- Concurrency and Locking
-- So far we've been the only user of our databse. But in real world it's quite possible that two or more users may try and access the same data
-- at the same time. This is called Concurrency.
-- Concurrency can become a problem when one user modifies the data that other users are trying to retrieve and modify.

-- Here, we are going to learn how MySQL handles concurrency by default 
-- So now we are going to simulate two users trying to update the points for a given customer at the same time. 
-- 1. first, we go to the home page and open a new connection to our server. I created a new server with name "Concurrency - other user"
-- 2. Now there are 2 separate connections 
-- 3.In the first session ie., connection "Local Instance"
-- 4. After writing the below code without executing we need to copy the code and paste in "Concurrency - other user"
-- 5. pasted the code to "Concurrency - other user"
-- 6. Before exececuting, we need to go to the customer table and check the 1 customer has how many points - so he has 2273 points
-- 7. Now in the "Local Instance" we execute line by line by susing the shortcut - Command + enter
-- 8. We execute line 17, 19, 20 and do not commit it yet and now we go to the "Concurrency - other user"
-- Coming back to the "Local Instance" and now execute the line 24 with the command + enter

USE sql_store;

START TRANSACTION;
UPDATE customers
SET points = points + 10
WHERE customer_id = 1;
COMMIT;


-- "Concurrency - other user"
USE sql_store;

START TRANSACTION;
UPDATE customers
SET points = points + 10
WHERE customer_id = 1;
COMMIT;
