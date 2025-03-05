-- The HAVING Clause : Here we shouldn't use WHERE clause. 
-- With WHERE Clause : We can filter the data before the rows are grouped
-- With HAVING Clause : We can filter the data after the rows are grouped

USE sql_invoicing;
SELECT 
     client_id,
     SUM(invoice_total) AS total_sales,
     COUNT(*) AS number_of_invoices
FROM invoices
GROUP BY client_id
HAVING total_sales > 500 AND number_of_invoices > 5