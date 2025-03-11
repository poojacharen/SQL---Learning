-- Altering or Dropping Views - Once we create a View, we may realize the query has a problem, so we may need to go back and change the view.
-- Two ways : 1. Drop the view and then recreate it - DROP VIEW sales_by_client  after executing this the view will be gone. 
--            2. Recreate the view - Again we can go back to the query and recreate it  and other way is to use the REPLACE keyword.
--               We can change the CREATE VIEW statement like this - CREATE OR REPLACE VIEW ........ AS 

USE sql_invoicing;
CREATE VIEW clients_balances AS
SELECT 
      c.client_id,
      c.name,
      SUM(invoice_total - payment_total) AS balance
FROM clients c
JOIN invoices i 
    USING (client_id)
GROUP BY client_id, name

