-- LIKE Operator -- % this means it can have any number of characters, %b% this meand it can have any num of characters in front of b, in the back or in the middle it doesn't matter.
-- eg: "_y" : this matches a single character (this means it has only 2 characters long), "_____y" : this matches with 6 characters
-- In simple : % any number of characters
--             _ single character

SELECT *
FROM customers
WHERE last_name LIKE "_____y"








  










