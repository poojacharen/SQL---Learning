-- How to create an event
-- First we need to change the default delimiter

DELIMITER $$

CREATE EVENT yearly_delete_stale_audit_rows -- start with events name with this interval like year;y, hourly, daily or once
ON SCHEDULE 
	-- AT '2019-05-01' -- if we want to execute it only once we use the AT keyword followed by the date time value
	EVERY 1 YEAR STARTS '2019-01-01' ENDS '2019-01-01'	   -- if we want to execute on a regular basis, instead of AT keyword we use the EVERY keyword with an interval like every 1 hour, or every 2 days or every 1 year depending on what we want to implement. Both STARTS '2019-01-01' ENDS '2019-01-01' are optional
DO BEGIN
	DELETE FROM payments_audit
    WHERE action_date < NOW() - INTERVAL 1 YEAR;
    
END $$

DELIMITER ;
