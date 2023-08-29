-- Question 1
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';
-- Question 2
SELECT COUNT(amount)
FROM payment
WHERE amount >= 3.99 AND amount <= 5.99;
-- Question 3
SELECT COUNT(film_id), film_id
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;
-- Question 4
SELECT last_name
FROM customer
WHERE last_name = 'William';
-- Question 5
SELECT COUNT(staff_id), staff_id
FROM rental
GROUP BY staff_id
ORDER BY COUNT(staff_id) DESC;
-- Question 6
SELECT count(distinct district)
FROM address;
-- Question 7
SELECT COUNT(film_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;
-- Question 8
SELECT COUNT(DISTINCT last_name)
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';
-- Question 9
SELECT COUNT(amount), amount
FROM payment
WHERE customer_id >= 380 AND customer_id <= 430
GROUP BY amount
HAVING COUNT(amount) >= 250
ORDER BY COUNT(amount);
-- Question 10
SELECT COUNT(rating), rating
FROM film
GROUP BY rating
ORDER BY COUNT(rating) DESC;