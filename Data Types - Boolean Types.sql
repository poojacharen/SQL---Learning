-- Boolean Types : yes or no
-- eg: Is this blog post published or not?
--     ie., when we use boolean values which are True or False
-- In MySQl we have a datatype called
-- BOOL
-- BOOLEAN
-- This data type is actually synonym for TINYINT

-- With the boolean column we can write the code like this.,
UPDATE posts
SET is_published = TRUE # or FALSE    -- the TRUE keyword is internally represented as 1 and FALSE is represented as 0
-- So we could rewrite the coe like this .,
UPDATE posts
SET is_published = 1
-- We can either use TRUE or FALSE or 1 or 0, our choice
