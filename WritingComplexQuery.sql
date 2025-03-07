-- Subqueries Vs Joins
-- Find clients without invoices

USE sql_invoicing;
SELECT *
FROM clients
LEFT JOIN invoices USING (client_id)
WHERE invoice_id IS NULL