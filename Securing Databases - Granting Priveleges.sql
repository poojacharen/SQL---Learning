-- Granting Privileges : also refer google for MySQL previleges
-- Once we create user account, we should assign some privileges 
-- 2 common scenarios
-- 1 : we have a web or desktop application and we want to allow this appliation to read and write in our database but nothing more. We don't want
-- this application to be able to create a new table or modify existing tables, that's something that only an admin should be able to do. So, the 
-- 2. second scenario is for admins. Let's say someone new joins our organization and we want to give them administrative privileges over one or
-- more databses or perhaps the entire MySQL server

-- Let's see the 1st scenario - let's imagine we have an application called moon and this application is to read or write data in sql store database

CREATE USER moon_app IDENTIFIED BY '1234';

GRANT SELECT, INSERT, UPDATE, DELETE, EXECUTE
ON sql_store.*
TO moon_app;
-- Created a new connection called moon_app with the password 1234

-- Lets' see the 2nd scenario for admin - earlier e coonected a user named pooja, let's say pooja is going to be an admin

GRANT ALL 
ON *.* -- *.* all tables in all databases
TO pooja



-- Moon_app connection
USE sql_store;
SELECT * FROM customers;
