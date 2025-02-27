-- Updating a Single Row
-- Method 2 : Let's imagine we have updated the wrong record and updated the record 1 instead of record 3. So we need to update the record one 
--            more time and restore the values in the 1st column to 3rd, so the query be like,
-- Now we have chnaged the 1st record to the orginal one 

-- USE sql_invoicing;
-- UPDATE invoices
-- SET payment_total = DEFAULT, payment_date = NULL
-- WHERE invoice_id = 1
-- Now updating the 3rd record, lets imagine the cient made 50% of the total amount on the due date. Query be like,

USE sql_invoicing;
UPDATE invoices
SET 
    payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE invoice_id = 3





