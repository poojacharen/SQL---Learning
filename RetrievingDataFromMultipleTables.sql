-- Compound Join Conditions : When you join two tables using more than one condition, combining multiple columns to match rows from both tables.

USE sql_store;
SELECT *
FROM order_items oi
JOIN order_item_notes oin
    ON oi.order_id = oin.order_id
    AND oi.product_id = oin.product_id

