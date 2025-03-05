-- Aggredate Functions - How to write queries that summarize data - MAX(), MIN(), AVG(), SUM(), COUNT()

USE sql_invoicing;
SELECT 
      MAX(invoice_total) AS highest,
      MIN(invoice_total) AS lowest,
      AVG(invoice_total) AS average,
      SUM(invoice_total) AS total,
      COUNT(invoice_total) AS totalcount
FROM invoices      