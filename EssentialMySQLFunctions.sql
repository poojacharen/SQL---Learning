-- Date Functions
-- NOW() We can get the current date and time
-- CURDATE() This returns the current date without the time component
-- CURTIME() This returns the current time without the date component
-- Also have some bunch of functions extracting certain components in a date or time
-- eg: YEAR(NOW()), MONTH(NOW)), DAY(NOW)), HOUR(NOW)), MINUTE(NOW)), SECOND(NOW)) : All these fun return integer values
-- Also have two useful fun that return string
-- eg: DAYNAME(NOW)), MONTHNAME(NOW))
-- EXTRACT() It is part of the standard sql language. If we want to be able to port the code to other dbms, we can use the EXTRACT fun
-- eg: EXTRACT(YEAR FROM NOW()), or MONTH< DAY, DATE etc,.. so when calling this fun we type out the unit (YEAR), then the from keyword 
--                                                       and then a date time value.

-- Exercise
USE sql_store;
SELECT *
FROM orders
WHERE YEAR(order_date) = YEAR(NOW())

