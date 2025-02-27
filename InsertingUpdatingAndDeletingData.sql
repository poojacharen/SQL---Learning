-- Updating a Single Row
-- Method 1 : IN the invoices table, we see there is no payment and payment date in the first row with id 1. Lets imagine that the client has paid 
--            the amount but forget to upfate it, then the query should be like

USE sql_invoicing;
UPDATE invoices
SET payment_total = 10, payment_date = "2019-02-06"
WHERE invoice_id = 1
