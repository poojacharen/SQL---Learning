-- Triggers
-- Exercise : Create a trigger that gets fired when we delete a payment


DELIMITER $$

CREATE TRIGGER payments_after_delete
	AFTER DELETE ON payments
    FOR EACH ROW 
BEGIN
	UPDATE invoices 
    SET payment_total = payment_total - OLD.amount
    WHERE invoice_id = OLD.invoice_id;
END $$

DELIMITER ;


-- From the payments table added the below code 
DELETE
FROM payments
WHERE payment_id = 10
