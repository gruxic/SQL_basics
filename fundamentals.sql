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
SELECT column_1, column_2 FROM table_1 ORDER BY column_1 ASC /*Ordered In Ascending Order- DEFAULT CASE*/ 
SELECT column_1, column_2 FROM table_1 ORDER BY column_1 DESC /*Ordered in Descending Order*/
SELECT column_1, column_2 FROM table_1 ORDER BY column_1,column_2 /*Orders first by column_1 and then according to column 2*/

SELECT store_id,first_name, last_name FROM customer
ORDER BY store_id DESC,first_name ASC /*you can choose to not SELECT coulmns and ORDER according to it*/


/*LIMIT statement*/
/*We can have the SQL queries in multiple lines*/
SELECT * FROM payment
WHERE amount !=0.00
ORDER BY payment_date DESC 
LIMIT 5       /* Limits the top 5 values only*/

/*EXAMPLE 1- First 10 paying customers*/
SELECT * FROM payment
WHERE amount!=0
ORDER BY payment_date ASC
LIMIT 10;


/*EXAMPLE 2- Top 5 Shortest films {length is a sequel keyword}*/
SELECT * FROM film
ORDER BY length ASC
LIMIT 5;

/*EXAMPLE 3- movies lesser than or equal to 50mins*/
SELECT COUNT (*) FROM film
WHERE length<=50

/*BETWEENand NOT BETWEEN statement*/
/*ex1*/
SELECT * FROM payment
WHERE amount BETWEEN 8 AND 9;
/*ex2*/
SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-14'/*2007-02-14 is not included*/


/* IN statement */
SELECT COUNT (*) FROM payment
WHERE amount IN (0.99,1.98,1.99);

/* NOT IN statement */
SELECT COUNT (*) FROM payment
WHERE amount NOT IN (0.99,1.98,1.99);



/*LIKE operator   %->for charaacters[WILDCARD starting or ending] ;    _ -> replace character[WILDCARD character]   */
SELECT * FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'J%'
/*LIKE is case sesnsitive, ILIKE is case insensitive*/
SELECT * FROM customer
WHERE first_name ILIKE 'j%' AND last_name ILIKE 'j%'


/*ex1*/
SELECT * FROM customer
WHERE first_name LIKE '%her%'
/*ex2*/
SELECT * FROM customer
WHERE first_name LIKE '_her%'
/*ex3*/
SELECT * FROM customer
WHERE first_name NOT LIKE '%her%'
/*ex4*/
SELECT * FROM customer
WHERE first_name LIKE 'A%'
ORDER BY last_name
/*ex5*/
SELECT * FROM customer
WHERE first_name LIKE 'A%' AND NOT LIKE 'B%'
ORDER BY last_name

