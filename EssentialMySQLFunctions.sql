-- The IFNULL and COALESCE Functions
-- With IFNULL func - we can substitute a null value, with something else
--                    eg: IFNULL(shipper_id, 'Not assigned')
-- With COALESCE func - we supply a list of values, and this func will return the first non null value in the list 
--                    eg: COALESCE(shipper_id, comments, 'Not assigned') 

-- Exercise : We have two columns customer and phone. In the customer column, we display the customers full name and in the phone column we 
--            display their phone num, and if we don't have their phone num, we display Unknown

USE sql_store;
SELECT  CONCAT(first_name, ' ', last_name) AS customer,
		IFNULL(phone, "Unknown") AS phone
FROM customers