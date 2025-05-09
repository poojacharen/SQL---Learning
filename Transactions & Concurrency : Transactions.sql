-- Transactions - It is a group of SQL statements that represent a single unit of work. All these statements should be completed successfully
--                or the transaction will fail.
--             We use transcation in situations where we want to make multiple changes to a database and we want all these changes to suceed or fail
--             together as a single unit.
-- Transaction have some ACID properties :-
-- 1. Atomicity : this means our transactions are like atoms, they're unbreakable. 
-- 2. Consistency : that means with these transactions our database will always remain in a consistent state.
-- 3. Isolation : that means these transactions are isolated or protected from each other if they tried to modify the same data.
-- 4. Durability : that means once a transaction is committed the changes made by the transaction are permanent.
