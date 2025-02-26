-- Joining across databases : How to combine rows and columns from multiple databases 
-- Here for example just imagine there is no products table in the sql_store, but we have it in the sql_inventory. if we want that product table
-- to the sql_store. Here is the method. We need to prefix the table with their current database. 

USE sql_inventory;
SELECT *
FROM sql_store.order_items oi
JOIN sql_inventory.products p
    ON oi.product_id = p.product_id


