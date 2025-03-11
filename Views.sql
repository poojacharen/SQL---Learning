-- Updatable Views - We have only used views for SELECT statements so far. BUt we can also use them in insert, update and delete statements
--                   but only under certain circumstances
-- If the view doesn't have the DISTINCT keyword and any Aggregate Functions like MIN, MAX, SUM etc..., GROUP BY / HAVING 
--                                                       and these basically go together because  most of the time when we use an aggregate
--                                                       func we also have a GROUP BY clause as well.
-- Finally, the UNION operator.  If we don't have any of these above stuff in our View, then we refer to that view as an Updatable Views which means
-- we can update data through it.  So, we can use that view in insert, update and delete statements.

-- We are going to create a balance for invoice table so that we don't need to create it everytime

USE sql_invoicing;
CREATE OR REPLACE VIEW invoices_balance AS
SELECT 
     invoice_id,
     number,
     client_id,
     invoice_total,
     payment_total,
     invoice_total - payment_total AS balance,
     invoice_date,
     due_date,
     payment_date
FROM invoices
WHERE (invoice_total - payment_total) > 0
     