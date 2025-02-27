-- Creating a Copy of a Table : Copying data from one table to another
-- Exercise : Look at the invoices table, we have the columns. So create a copy of the records in this table and create a new table called
--            invoices_archive. However in that table instead of the client_id column we are gonna have client_name column so you need to join
--            this table with clients table and then use this query as sub query and create table statement. Also, you need to copy only the 
--            invoices that do have the payment

USE sql_invoicing;

CREATE TABLE invoices_archived AS
SELECT 
      i.invoice_id,
      i.number,
      c.name AS client,
      i.invoice_total,
      i.payment_total,
      i.invoice_date,
      i.payment_date,
      i.due_date
FROM invoices i
JOIN clients c
    USING (client_id)
WHERE payment_date IS NOT NULL
