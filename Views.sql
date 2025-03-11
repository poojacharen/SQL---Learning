-- Creating Views : View is extremely powerful and it can greatly simplify our future queries. View behaves like a virtual table, but views don't
--                  store data, our data is actually stored in our tables. View just provides a view to the underlying tables ie. why its 
--                  called Views

USE sql_invoicing;

CREATE VIEW sales_by_client AS
SELECT 
     c.client_id,
     c.name,
     SUM(invoice_total) AS total_sales
FROM clients c
JOIN invoices i 
    USING (client_id)
GROUP BY client_id, name