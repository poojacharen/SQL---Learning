-- Full-text Indexes 
-- In MySQL and many other database management systems, we have a special kind of index called Full-text Index. We use this indexex to build fast
-- and flexible applications in our search engines 

-- Now let's say the user searches for 'react  redux' on our blog. React is a very popular JavaScript library for building fron-end applications
-- and Redux is a library that is quite often used with react aplications
-- So, let's say someone lands on our blog and searches for 'react redux'. HOw can we find the posts that are about ;reat redux' ?

USE sql_blog;
SELECT *
FROM posts
WHERE title LIKE '%react redux%' or
		body LIKE '%react redux%';

-- The above is query is not helpful while searching indexes. This is where we use Full-text Indexes. 
USE sql_blog;
CREATE FULLTEXT INDEX idx_title_body ON posts (title, body);

SELECT *, MATCH(title, body) AGAINST('react redux')
FROM posts
WHERE MATCH(title, body) AGAINST('react -redux +form' IN BOOLEAN MODE);
