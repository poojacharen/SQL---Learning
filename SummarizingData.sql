-- The ROLLUP Operator : it summarizes the data 
-- Exercise : Write a query to produce a report with columns (payment_method, total) write the qiery against payments table

USE sql_invoicing;
SELECT 
      pm.name AS payment_method,
      SUM(amount) AS total
FROM payments p
JOIN payment_methods pm
    ON p.payment_method = pm.payment_method_id
GROUP BY pm.name WITH ROLLUP
