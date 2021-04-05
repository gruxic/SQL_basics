/*Aggregate Functions- AVG()[use ROUND() to pround off number], COUNT(), MAX(), MIN(), SUM()
They occur only in the SELECT and the HAVING clause*/

SELECT MIN(replacement_cost) FROM film;
SELECT MAX(replacement_cost) FROM film;

SELECT MAX(replacement_cost), MIN(replacement_cost) FROM film;

SELECT ROUND(AVG(replacement_cost),2) FROM film;

SELECT SUM(replacement_cost) FROM film;

/*GROUP BY*/
SELECT customer_id,COUNT(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC 

SELECT customer_id,SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC 

SELECT customer_id,staff_id, SUM(amount) FROM payment
GROUP BY customer_id, staff_id
ORDER BY customer_id,staff_id

SELECT DATE(payment_date), SUM(amount) FROM payment
GROUP BY DATE(payment_date)
ORDER BY SUM(amount) DESC ;/*Extracting only the DATE and not the time from payment_date column*/



