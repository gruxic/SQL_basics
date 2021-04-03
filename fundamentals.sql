/*SELECT STATEMENT*/
SELECT last_name,first_name FROM actor; 
SELECT first_name, last_name, email FROM customer;

/*SELECT DISTINCT- helps us find the unique values*/
SELECT DISTINCT release_year FROM film;
SELECT DISTINCT rental_rate FROM film;
SELECT DISTINCT rating FROM film;

/*SELECT COUNT function*/
SELECT COUNT(DISTINCT(customer_id)) FROM payment; /* Returns a number representing the total number*/
SELECT COUNT(DISTINCT(amount)) FROM payment;

/* SELECT WHERE statement*/
SELECT name FROM table WHERE name='david' AND choice='RED';
SELECT * FROM customer WHERE first_name='Jared';
SELECT * FROM film WHERE rental_rate>4 AND replacement_cost>=19.99 AND rating='R';
SELECT * FROM film WHERE rating !='R';
SELECT email FROM customer WHERE first_name='Nancy' AND last_name='Thomas';

/*To find th total number of titles for the above condition, use SELECT COUNT statement*/
SELECT COUNT(*) FROM film WHERE rental_rate>4 AND replacement_cost>=19.99 AND rating='R';

/*ORDER BY statement*/



