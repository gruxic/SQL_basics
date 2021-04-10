/*AS*/


/*INNER JOIN*/
SELECT payment_id,first_name FROM payment
INNER JOIN customer
ON payment.customer_id=customer.customer_id;

/*FULL OUTER JOIN*/
/*LEFT OUTER JOIN*/
SELECT film.film_id,title,inventory from film
LEFT JOIN inventory ON
inventory.film_id = film.film_id;

/*RIGHT OUTER JOIN*/
SELECT film.film_id,title,inventory from film
RIGHT JOIN inventory ON
film.film_id = inventory.film_id
WHERE film

/*UNION*/
 