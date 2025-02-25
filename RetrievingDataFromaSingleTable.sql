-- REGEXP : Regular Expression - extremely powerful when searching for a string. They allow us to search for most complex patterns. We can use ^ a beginning 
-- of a string. $ to represent a end of a string. | represents to search for multiple search patterns of the string eg: "field|mac|rose"
-- "[gim]e" - represents any charecters that are present before e and it can also be "e[gim]", and also we can give some range of char like "[a-h]e"
-- ^ : beginning of a string, $ : end of a string, | : logical or(multipe searh patterns), [abcdef] : any single char listed in the brackets, [-] : to represent a range like [a-h].

-- Exercise : 2. Get the customers whose last names end with EY or ON

SELECT *
FROM customers
WHERE last_name REGEXP "ey$|on$"









  










