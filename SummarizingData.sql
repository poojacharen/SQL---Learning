-- The GROUP BY Clause 
-- Method 1 : Grouping using single column

USE sql_invoicing;
SELECT 
      client_id,
     SUM(invoice_total) AS total_sales
FROM invoices
WHERE invoice_date >= "2019-07-01"
GROUP BY client_id
ORDER BY total_sales DESC