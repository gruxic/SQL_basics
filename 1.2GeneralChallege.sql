/*How many payment transactions where greater than $5*/
SELECT COUNT(amount) FROM payment
WHERE amount>5.00;

/*How many actors have a first name that starts with the letter P?*/
SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%';

/*How many unique districts are our customers from?*/
SELECT DISTINCT COUNT(district) FROM address;

/*How many films have a raitng of R and a replacement cost between $5 and $15*/
SELECT COUNT(*) FROM film
WHERE rating = 'R' AND replacement_cost BETWEEN 5 AND 15;


/*How many films have the word Truman somewhere in the title?*/
SELECT COUNT(*) FROM film
WHERE title LIKE '%Truman%';
