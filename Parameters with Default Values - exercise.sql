-- Parameters with Default Values - Exercise
-- Write a stored procedures called get_payments with two parameters
-- client_id => INT(4)
-- payment_method_id => TIYINT(1) 0 - 255
-- Also refer google by typing "mysql int size"

-- For the solution created a new stored procedure under invoicing

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_payments`(
	client_id INT,
    payment_method_id TINYINT
)
BEGIN
	SELECT *
    FROM payments p
    WHERE 
        p.client_id = IFNULL(client_id, p.client_id) AND
        p.payment_method = IFNULL(payment_method_id, p.payment_method);

END

-- the above is after applying the stored procedure we got the root@....
-- otherwise it would be CALL PROCEDURE get_payments and then we write the below code and then hit apply

-- In a new separate query we'll execute the below code

CALL get_payments(NULL, 2)  -- we run with multiple conditions 
