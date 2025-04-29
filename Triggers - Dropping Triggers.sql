-- Dropping Triggers - It is very similar to the dropping stored procedures 

DROP TRIGGER IF EXISTS payments_after_insert;

-- we can use the drop trigger and then create a new trigger

DELIMITER $$

DROP TRIGGER IF EXISTS payments_after_delete;  -- used a dropped trigger here

CREATE TRIGGER payments_after_delete
	AFTER DELETE ON payments
    FOR EACH ROW 
BEGIN
	UPDATE invoices 
    SET payment_total = payment_total - OLD.amount
    WHERE invoice_id = OLD.invoice_id;
END $$

DELIMITER ;
