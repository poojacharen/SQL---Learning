-- The GROUP BY Clause 
-- Method 2 : Grouping using multiple tables - grouping invoice table with clients table

USE sql_invoicing;
SELECT 
      state,
      city,
      SUM(invoice_total) AS total_sales
FROM invoices i
JOIN clients 
    USING (client_id)
GROUP BY state, city