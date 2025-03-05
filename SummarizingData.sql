-- Aggredate Functions - How to write queries that summarize data - MAX(), MIN(), AVG(), SUM(), COUNT()
-- Exercise : Write a query against invoices table to generate this report we have date_range, total_sales, total_payments, what_we_expect, 
--            You need to calculate the first half of the year, second half of the year, and total.

USE sql_invoicing;
SELECT 
	  "First half of 2019" AS date_range,
      SUM(invoice_total) AS total_sales,
      SUM(payment_total) AS total_payments,
      SUM(invoice_total - payment_total) AS what_we_expect
FROM invoices    
WHERE invoice_date 
     BETWEEN "2019-01-01" AND "2019-06-30"  
UNION
SELECT 
	  "Second half of 2019" AS date_range,
      SUM(invoice_total) AS total_sales,
      SUM(payment_total) AS total_payments,
      SUM(invoice_total - payment_total) AS what_we_expect
FROM invoices    
WHERE invoice_date 
     BETWEEN "2019-07-01" AND "2019-12-30"  
UNION 
SELECT 
	  "Total" AS date_range,
      SUM(invoice_total) AS total_sales,
      SUM(payment_total) AS total_payments,
      SUM(invoice_total - payment_total) AS what_we_expect
FROM invoices    
WHERE invoice_date 
     BETWEEN "2019-01-01" AND "2019-12-30"  