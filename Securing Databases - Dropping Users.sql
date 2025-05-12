-- Dropping Users
-- As people leave our organization, we need to drop their user accunt so they can no longer our MySQL server. 
-- Create a new user pooja who can connect with codewithmosh.com and is identified by this password. So now we have created the user

CREATE USER poja@codewithmosh.com IDENTIFIED BY '1234'


-- Now let's say pooja has left the organization 
DROP USER pooja@codewithmosh.com;
