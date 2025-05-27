-- Character Set and Collations
-- Character Set : when we store a string like 'abc' MySQL will convert each character to it's numerical representation using a character set
-- So, a character set is a table that maps each character to a number. 
-- Now, there are various different character sets, some of them only support Latin languages, the other support Asian languages and we also have
-- character sets tht support all International languages

SHOW CHARSET 

-- Collation : it is basically a bunch of rules, that determines how the characters in a given language are sorted
