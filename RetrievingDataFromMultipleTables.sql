-- The USING Clause 
-- Exercise :From the sql_invoicing db, write the query to select the payments on the payments table and give the result with date, client,
--           amount, payment method (name).

USE sql_invoicing;
SELECT 
      p.date,
      c.name AS client,
      p.amount,
      pm.name AS paymenttype
FROM payments p
JOIN clients c
    USING (client_id)
JOIN payment_methods pm
    ON p.payment_method = pm.payment_method_id  
