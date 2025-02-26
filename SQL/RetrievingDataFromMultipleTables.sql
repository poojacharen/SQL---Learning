-- Inner Joins : Selects records that have matching values in both tables
-- Exercise : Look at the order_items table. Write a query and join this table with products table, so for each order return both the 
--            order_id and product_id as well as its name followed by the quantity and it's unit_price from the order_items table.

SELECT  order_id, order_items.product_id, quantity, order_items.unit_price
FROM order_items
JOIN products 
    ON order_items.product_id = products.product_id
