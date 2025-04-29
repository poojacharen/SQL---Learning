-- How to View, Drop or Alter Events

-- To view the events on the current database
SHOW EVENTS;

-- To view the events that gets triggered every year
SHOW EVENTS LIKE 'yearly%';

-- To drop an event 
DROP EVENT IF EXISTS yearly_delete_stale_audit_rows;

-- To alter the event - we have alter event statement to make changes to an event without the need to drop and recreate it. And the syntax is exactly same as the create event statement
ALTER EVENT yearly_delete_stale_audit_rows;

-- We can also use the alter event statement to temporarily enable or disable an event
ALTER EVENT yearly_delete_stale_audit_rows ENABLE;   -- for disable we use DISABLE
