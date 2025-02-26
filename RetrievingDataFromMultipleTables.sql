-- Joining Multiple tables
-- Exercise : Look at the sql-invocing db, see the payments table. We can join the client_id to the clients table to see the name of the clients. 
--            Next, in the same payments table we have invoice_id, date, amount & payment_method. So similarly we can join this table to the 
--            payments_methods table. Write a query and joins this table with the payments_methods table as well as the clients table.

USE sql_invoicing;
SELECT 
     p.date,
     p.invoice_id,
     p.amount,
     c.name,
     pm.name
FROM payments p
JOIN clients c
    ON p.client_id = c.client_id
JOIN payment_methods pm
    ON p.payment_method = pm.payment_method_id  

