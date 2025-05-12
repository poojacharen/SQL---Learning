-- Revoking Privileges ie. droppin priviileges
-- Once we create a user and give it some privileges we might realize we made a mistake and we want to revoke one or more privileges or maybe
-- we can assign someone more privileges than they deserve and they end up abusing those privileges. 

GRANT CREATE VIEW
ON sql_store.*
TO moon_app;

-- Now lets say we made a mistake

REVOKE CREATE VIEW
ON sql_store.*
FROM moon_app;
