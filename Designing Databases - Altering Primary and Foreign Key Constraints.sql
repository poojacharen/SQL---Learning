-- Altering Primary and Foreign Key Constraints
-- We'll see how to drop or create relationships between tables that already exists
-- For eg: Let's say in our current script we forgot to add the foreign key constraint to the orders table. So, we forgot to create the relationship,
--       now we'll see how to add the relationship after creating the table  
-- In the other query window (which we created for altering tables)

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

-- In the other window
ALTER TABLE customers
	ADD last_name VARCHAR(50) NOT NULL AFTER first_name,
    ADD city	  VARCHAR(50) NOT NULL,
    MODIFY COLUMN first_name VARCHAR(55) DEFAULT '',
    DROP points
    ;
    
ALTER TABLE orders
	ADD PRIMARY KEY (order_id),
    DROP PRIMARY KEY,
	DROP FOREIGN KEY fk_orders_customers,
    ADD FOREIGN KEY fk_orders_customers (customer_id)
		REFERENCES customers (customer_id)
        ON UPDATE CASCADE
        ON DELETE NO ACTION;
