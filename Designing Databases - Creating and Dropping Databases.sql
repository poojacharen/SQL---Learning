-- Creating and Dropping Databases

-- Creates a new database
CREATE DATABASE sql_store2;

-- If the above statement is executed one more time, we get an error so for the better approach is to include,
CREATE DATABASE IF NOT EXISTS sql_store2
-- With the above, we can execute the statement multiple times

-- Dropping the database ie., deleting the database
DROP DATABASE IF EXISTS sql_store2;
