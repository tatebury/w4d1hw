--1.
SELECT COUNT(last_name)
FROM actor
WHERE last_name LIKE 'Wahlberg';

--2.
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

--3.
SELECT COUNT(film_id), film_id
FROM inventory 
group by film_id
ORDER BY COUNT(film_id) DESC
LIMIT 1;

--4.
SELECT last_name
FROM customer
WHERE last_name LIKE 'William%';

--5.
SELECT staff_id, COUNT(rental_id)
FROM payment
GROUP BY staff_id
ORDER BY count(rental_id) DESC
LIMIT 1;

--6.
SELECT DISTINCT COUNT(district)
FROM address;

--7.
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC
LIMIT 1;

--8.
SELECT COUNT(*)
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';

--9.
SELECT COUNT(DISTINCT amount)
FROM payment
WHERE customer_id BETWEEN 380 and 430
HAVING COUNT(payment_id) > 250;

--10.
SELECT COUNT(DISTINCT rating)
FROM film;
SELECT rating, COUNT(film_id)
FROM film
GROUP BY rating
ORDER BY COUNT(film_id) DESC
LIMIT 1;










