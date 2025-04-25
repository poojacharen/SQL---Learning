-- Parameter Validation - it ensures that the procedure doesn't accidently store bad data in the database
-- So with Stored Procedures we can not only select data we can also procedures to insert, update and delete data
-- Now, we are going to create a procedure to update an invoice 

-- let's start by creating a new procedure
-- once after creating the stored procedure make_payment under invoicing
-- we need to call the procedure by clicking the make_payment (thunder symbol) so that we call the procedure


CREATE DEFINER=`root`@`localhost` PROCEDURE `make_payment`(
	invoice_id INT,
    payment_amount DECIMAL(9, 2),  -- DECIMAL represents a number with a decimal points, so we have 2 arguments so the first argument represents the total number of digits ie., 9 and the second arguments represent the number of. digits after the decimal points ie., 2
    payment_date DATE
)
BEGIN
	IF payment_amount <= 0 THEN
		SIGNAL SQLSTATE '22003' SET MESSAGE_TEXT = 'Invalid payment amount'; -- sqlstate code are errors refer google for more. 22003 is a numeric value of a range '' it is a string not a number
	END IF;
    
    UPDATE invoices i
    SET
		i.payment_total = payment_amount,
        i.payment_date = payment_date
	WHERE i.invoice_id = invoice_id;
END


-- After creating stored procedure, in a separate query is the below code

call invoicing.make_payment(2, 100, '2019-01-01');
