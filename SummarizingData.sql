-- The ROLLUP Operator : it summarizes the data 

USE sql_invoicing;
SELECT 
      state,
      city,
      SUM(invoice_total) AS total_sales
FROM invoices i
JOIN clients c
    USING (client_id)
GROUP BY state, city  WITH ROLLUP 
