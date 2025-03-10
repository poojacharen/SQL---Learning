-- The IF Function
-- Exercise : Write a query to produce these columns product_id, name, orders, frequency, frequency column which is based on what we have 
--            in the orders column. If a product has been ordered more than once in a frequency column we have Many times, otherwise Once

USE sql_store;
SELECT 
      product_id,
      name,
      COUNT(*) AS orders,
      IF(COUNT(*) > 1, "Many times", "Once") AS frequency
FROM products
JOIN order_items USING (product_id)
GROUP BY product_id, name
      