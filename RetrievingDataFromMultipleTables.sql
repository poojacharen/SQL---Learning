-- Outer Joins : there are two joins RIGHT Join and LEFT join
-- Exercise : Join the products table with order items table. And see how many times the product has been ordered. Output: product_id, name, qty

SELECT 
      p.product_id,
      p.name,
      oi.quantity
FROM products p
LEFT JOIN order_items oi
	ON p.product_id = oi.product_id
ORDER BY p.product_id    