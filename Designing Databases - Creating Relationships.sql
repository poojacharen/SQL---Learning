-- Creating Relationships 
-- Let's create the orders table and add a relationship between the customers and orders from the original sql_store database (not the new one)
-- So after executing the below code the orders table will be recreated in the sql_store2

CREATE DATABASE IF NOT EXISTS sql_store2;
USE sql_store2;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;

CREATE TABLE IF NOT EXISTS customers
(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name  VARCHAR(50) NOT NULL,
    points 		INT NOT NULL DEFAULT 0,
    email		VARCHAR(255) NOT NULL UNIQUE
);
CREATE TABLE orders
(
order_id     INT PRIMARY KEY,
customer_id  INT NOT NULL,
FOREIGN KEY  fk_orders_customers (customer_id)
	REFERENCES customers (customer_id)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);
