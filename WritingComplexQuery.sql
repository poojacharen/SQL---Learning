-- Subqueries in the SELECT Clause
-- Exercise : Write a query to produce this result which is (client_id, name, total_sales, average, difference) 
--            total_sales of each client which is basically the sum of all invoices issued for each client. 
--            average of all the invoice totals
--            difference is between the total_sales and average

USE sql_invoicing;
SELECT 
     client_id,
     name,
     (SELECT SUM(invoice_total)
      FROM invoices
      WHERE client_id = c.client_id) AS total_sales,
      (SELECT AVG(invoice_total)
       FROM invoices) AS average,
       (SELECT total_sales - average) AS difference
FROM clients c