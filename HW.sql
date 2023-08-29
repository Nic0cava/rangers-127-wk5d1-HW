-- Question 1
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';
-- Question 2
SELECT COUNT(amount)
FROM payment
WHERE amount >= 3.99 AND amount <= 5.99;
-- Question 3
SELECT inventory_id, film_id
FROM inventory
GROUP BY inventory_id
ORDER BY film_id;
-- Question 4
SELECT last_name
FROM customer
WHERE last_name = 'William';
-- Question 5
SELECT staff_id, rental_id
FROM payment
GROUP BY payment_id
ORDER BY staff_id;
-- Question 6
SELECT count(distinct district)
FROM address;
-- Question 7
SELECT film_id, count(distinct actor_id)
FROM film_actor
GROUP BY film_actor.actor_id, film_actor.film_id
ORDER BY actor_id;
-- Question 8
SELECT store_id, last_name
FROM customer
WHERE last_name = '%es' AND store_id = 1;
-- Question 9
-- Question 10