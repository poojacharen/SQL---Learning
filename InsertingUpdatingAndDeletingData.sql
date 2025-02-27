-- Updating Multiple Rows : Syntax is exactly the same as the updating a single rows but the where condition has to be more general
-- For eg: In the invoices table, we have multiple invoices for client_id num 3.We can write a statement to update all the invoices  for this 
--         client.
-- Note: if we just change the WHERE client_id = 3, however if we execute this statement with MySQL workbench, we are going to get an error because 
--       by default, MySQL workbench runs in the safe update mode, so it allows you to update only a single record. Will not be a problem if you use
--       another client from MySQL or if you write this statement in your application code. This is only specific to MySQL workbench.
--  Go to myqslworkbench --> preferences --> click on SQL Editor --> down the bottom untick (safe updates). So this prevents from accidently
--  updating or deleting a bunch of records in a table. After doing it you need to reconnect the localinstance of MySQL

USE sql_invoicing;
UPDATE invoices
SET 
   payment_total = invoice_total * 0.5,
   payment_date = due_date
WHERE client_id IN (3, 4)
                      

