USE sakila;

-- SELECT * FROM actor
-- SELECT first_name, last_name FROM actor WHERE first_name='John';
-- SELECT first_name, last_name FROM actor WHERE last_name='Neeson';
-- SELECT actor_id, first_name, last_name FROM actor WHERE actor_id%10 = 0;
-- SELECT film_id, title, description FROM film WHERE film_id=100;
-- SELECT title FROM film WHERE rating='R';
-- SELECT film_id, title, rating FROM film WHERE rating!='R';
SELECT film_id, title, length FROM film ORDER BY length ASC LIMIT 10;
