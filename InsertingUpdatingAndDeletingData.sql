-- Creating a Copy of a Table : Copying data from one table to another

INSERT INTO orders_archived
SELECT *
FROM orders
WHERE order_date < "2019-01-01"