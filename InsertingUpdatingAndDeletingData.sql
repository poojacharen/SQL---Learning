-- Deleting Rows

USE sql_invoicing;
DELETE FROM invoices
WHERE client_id = (
                SELECT * 
                FROM clients
                WHERE name = "Myworks")
