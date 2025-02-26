-- The USING Clause Method 1

   USE sql_store;
   SELECT 
         o.order_id,
         c.first_name,
         sh.name AS shipper
   FROM orders o
   JOIN customers c
	   USING (customer_id)
   LEFT JOIN shippers sh
       USING (shipper_id)