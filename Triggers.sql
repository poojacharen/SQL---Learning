-- Triggers : It is a block of SQL code that automatically gets executed before or after an insert, update or delete statement. Quite often we use triggers to enforce data consistency
-- For eg: In the SQL store database (on the left panel), we have multiple payments towards a given invoice. In the invoice table we have a payment_total column and the value that we have in the column should be equal to
--         the sum of all the payments for the invoice. So, whenever we insert a new record in the payments table, we should make sure that the payment_total column in the invoices table, gets updated. 
--         And this is were we use a Trigger

DELIMITER $$

CREATE TRIGGER payments_after_insert  -- payments - is a table name, after - we type after or before and this indicates whether the trigger is fired after or before a SQL statement, insert - we have a type of the SQL statemnet that will fire this trigger
	AFTER INSERT ON payments
    FOR EACH ROW 
BEGIN
	UPDATE invoices 
    SET payment_total = payment_total + NEW.amount
    WHERE invoice_id = NEW.invoice_id;
END $$

DELIMITER ;

-- In a separate new query
INSERT INTO payments
VALUES (DEFAULT, 5, 3, '2019-01-01', 10, 1)
