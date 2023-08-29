-- intro query, selct all columns from the actor table
SELECT *
FROM actor;

SELECT first_name, last_name
FROM actor;

-- WHERE clause -- setting a condition for a query --

SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

SELECT actor_id, first_name, last_name
FROM actor
WHERE actor_id = 2;

-- Query for actor names that are like nick
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick';

-- % wild card

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'L%';

-- underscores place holder for potential match
SELECT first_name, last_name
FROM actor
WHERE first_name Like 'L___';

SELECT first_name, last_name --grabbing the columns
FROM actor -- grabbing the tables
WHERE first_name LIKE 'T_m'; -- clause for data retrieval

-- the not equal <> operator
SELECT *
FROM payment;

-- Query for customers who paid an amount greater than $3
SELECT DISTINCT(customer_id), amount
FROM payment
WHERE amount > 3.00;

-- Query for customers who paid under 7.99
SELECT DISTINCT(customer_id), amount
FROM payment
WHERE amount < 7.99;

-- Query for customers who paid at least 5.99 for a rental
SELECT customer_id, rental_id, amount
FROM payment
WHERe amount >= 5.99;

-- customers who paid at most 2.99
SELECT customer_id, rental_id, amount
FROM payment
WHERE amount <= 2.99;

SELECT customer_id, amount
FROM payment
WHERE amount <> 2.99; -- != not equal

SELECT *
FROM payment
ORDER BY amount ASC; -- defaults to ascending order

SELECT *
FROM payment
ORDER BY amount DESC; -- decending order

SELECT *
FROM payment
ORDER BY amount DESC
LIMIT 25; -- limit to the first 25 rows of data

SELECT *
FROM payment
ORDER BY amount DESC
LIMIT 25 OFFSET 100; -- skips 100 rows of data and then gives the first 25 rows after that

-- BETWEEN
-- Query for customers that paid an amount between 2.99 and 7.99
-- using WHERE, BETWEEN, AND
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 2.99 AND 7.99;



