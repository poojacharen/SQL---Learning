-- Creating a User
-- So far we've been connecting to our database server using the root user. This is the same user account that we created at the time of 
-- installing MySQL.
-- Now, when it comes to using MySQL in a production environment, we need to create a additional user accounts and give them specific previleges
-- For eg: Let's say you're building a web or desktop application, our application needs to access data in MySQL database. So we need to create
--         a user account for our application and give it permission to read and write data to our applications database but nothing more.
--         So, this user account should not be able to change the structure of our database. It shouldn't be able to create new tables, or drop
--         exixting ones, because this can totally mess up with everything
-- Eg: Let's say someone new joins our organization as a database administrator. We need to create an account for this person so they can manage
--     one or more databases or the entire MySQL server

-- So to create an user account, john@127.0.0.1 its an IP address of the new computer that means this user can only connect from the same computer where
-- we have installed MySQL. If they try to connect from a different computer, MySQL is going to decline the connection. 
-- This is very useful in cloud environments, so typically we have a web server and a database server. On the database server, when creating a 
-- new user account for our application, we want to make sure that the user account can only connect from web server, so this is where we specify
-- the IP address of our web server

-- We can also name as localhost ie., pooja@localhost: this again represents the current computer where we have installed MySQL 
-- We can also specify a domain name like pooja@codewithmosh.com, now this user can connect from any computers in this domain. But they won't
-- be able to connect from sub domains of codewithmosh.com. To provide that we need to provide a wild card here which 
-- pooja@'%.codewithmosh.com' - this represents any subdomains 

CREATE USER pooja@127.0.0.1
CREATE USER pooja@codewithmosh.com
CREATE USER pooja@'%.codewithmosh.com'

-- We supply the password
CREATE USER pooja IDENTIFIED BY '1234'
