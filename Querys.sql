SELECT *  FROM airbnb_listings;
SELECT name  FROM users;

SELECT DISTINCT name  FROM users;

SELECT *
FROM airbnb_listings 
WHERE number_of_rooms > 3;


SELECT city, year_listed AS 'Years'
FROM airbnb_listings 
ORDER BY number_of_rooms ASC;

SELECT * 
FROM airbnb_listings
LIMIT 5;

SELECT *
FROM airbnb_listings 
WHERE number_of_rooms BETWEEN 3 AND 6;

SELECT * 
FROM airbnb_listings 
WHERE city = 'Paris';

SELECT *
FROM airbnb_listings 
WHERE country IN ('USA', 'France');


SELECT * 
FROM airbnb_listings 
WHERE city LIKE 'j%' AND city NOT LIKE '%t';

SELECT *
FROM airbnb_listings 
WHERE NOT number_of_rooms > 3;

SELECT * FROM users WHERE emails IS NULL;
-- COmment 


SELECT MAX(age) FROM users 

SELECT COUNT(age) FROM users 


SELECT CONCAT('Name', name, 'surname', surname ) As 'Full Name' FROM Users


SELECT MAX(age) FROM user GROUP BY age 
SELECT COUNT(age), age  FROM user GROUP BY age  ORRDER BY age ASC


--Count how many orders each user has:
SELECT user_id, COUNT(*) AS total_orders
FROM orders
GROUP BY user_id;
--In SQL, HAVING is used to filter the results of groups created by GROUP BY.
--Now filter and show only users with more than 5 orders:
SELECT user_id, COUNT(*) AS total_orders
FROM orders
GROUP BY user_id
HAVING COUNT(*) > 5;


SELECT 
    order_id,
    total,
    CASE
        WHEN total > 100 THEN 'High'
        WHEN total BETWEEN 50 AND 100 THEN 'Medium'
        ELSE 'Low'
    END AS order_size
FROM orders;

--An INNER JOIN returns only the rows where both tables have matching values.
SELECT 
    users.id,
    users.name,
    orders.order_id,
    orders.total
FROM orders
INNER JOIN users
    ON orders.user_id = users.id;


--1:N 
SELECT 
    users.id,
    users.name,
    orders.order_id,
    orders.total
FROM users
LEFT JOIN orders
    ON users.id = orders.user_id;

--N:N
SELECT users.name languages.name
FROM users_languages
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.languages_id=langguages.languages_id
--UNION is used to combine the results of two or more SELECT queries into a single result set.
SELECT language FROM table1
UNION
SELECT language FROM table2;



















































