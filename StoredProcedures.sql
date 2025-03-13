-- Creating a Stored Procedure

DELIMITER $$
CREATE PROCEDURE get_clients()
SELECT * 
FROM clients;
END$$

DELIMITER ;