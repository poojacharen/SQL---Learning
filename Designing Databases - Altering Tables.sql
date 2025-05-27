-- Altering Tables : modifying an existing table
-- So let's say we created this customer's table but we realize or forgot to add the last name column under the sql_store2 or maybe we chose the wrong
-- data type for a given column. This is where we use the alter table statement. 
-- So in the new query window 

CREATE DATABASE IF NOT EXISTS sql_store2;
USE sql_store2;
DROP TABLE IF EXISTS customers;
CREATE TABLE IF NOT EXISTS customers
(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name  VARCHAR(50) NOT NULL,
    points 		INT NOT NULL DEFAULT 0,
    email		VARCHAR(255) NOT NULL UNIQUE
);

-- In the new query window
ALTER TABLE customers
	ADD last_name VARCHAR(50) NOT NULL AFTER first_name,
    ADD city	  VARCHAR(50) NOT NULL,
    MODIFY COLUMN first_name VARCHAR(55) DEFAULT '',
    DROP points
    ;
