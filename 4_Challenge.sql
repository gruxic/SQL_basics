/*Emails of customers from california district?*/
SELECT email FROM customer
INNER JOIN address
ON customer.address_id=address.address_id
WHERE address.district= 'California'

/*Get a list of all movies Nick Walberg has been in*/
SELECT title FROM film_actor
INNER JOIN film
ON film_actor.film_id=film.film_id
INNER JOIN actor
ON film_actor.actor_id=actor.actor_id
WHERE first_name='Nick' AND last_name='Wahlberg'

