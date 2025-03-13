-- Dropping SP : We can drop the file and execute, the file is no more. And after dropping if we execute then we'll get an error, so we need to
--               use IF EXISTS and the previous name of the SP, and again create a SP with that name, so we can have it

DROP PROCEDURE IF EXISTS get_clients;

DELIMITER $$
CREATE PROCEDURE get_clients()
BEGIN
    SELECT *
    FROM clients;
END$$

DELIMITER ;