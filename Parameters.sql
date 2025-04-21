-- Parameters - how to add parameters to our store procedures. Typically we use a parameter to pass a value to a stored procedure, but we can also use parameters to send values to the 
--              calling program

-- We are using the code for creating store procedure by get_clients_by_state. We want the store procedure to recieve the name of the state and return to clients in that state
DROP PROCEDURE IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE PROCEDURE get_clients_by_state
  (
  state CHAR(2)   -- in between the () we add a parameter called state and set it's type to char. If we have multiple parameters we need to separate them using a comma
  )     -- char 2 represents a string of two characters like ca for california. Also, have VARCHAR which represents a variable length string, and it's useful for storin names, ph.num, msgs
BEGIN
  SELECT * FROM clients c
  WHERE c.state = state;
END $$

DELIMITER ;
