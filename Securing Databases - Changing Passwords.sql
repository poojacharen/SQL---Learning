-- Changing Passwords
-- People often forget their passwords. So as a database admin, we might be asked to change someone's password or maybe our on password. 
-- There are basically 2 ways to do this
-- We can use the set password statement, so we set password for pooja, we set this to a new password 

SET PASSWORD FOR pooja = '1234';

-- If we want to change our own password, we drop the FOR clause and this sets the password of the currently logged in user. Whether it's 
-- the root user or someone else

SET PASSWORD = '1234';

-- Other way is to change the password through navigator panel, administration tab --> users and priveleges --> pooja --> change the password -->
-- we can also expire the password and this will force this user to change this password next time they log in
-- Reminder, whenever we change the password through navigator panel, we need to click on apply button 
