-- Inner Joins : Selects records that have matching values in both tables

SELECT order_id, o.customer_id, first_name, last_name
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
