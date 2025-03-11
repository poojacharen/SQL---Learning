-- Creating Views : View is extremely powerful and it can greatly simplify our future queries. View behaves like a virtual table, but views don't
--                  store data, our data is actually stored in our tables. View just provides a view to the underlying tables ie. why its 
--                  called Views
-- Exercise : Create a view to see the balance for each client. clients_balance
--            client_id, name, balance - we calculate balance by subtracting the payment_total from invoice_total in invoices table

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

