/*We have two staff members with staff IDs 1 and 2. We want to give a bonus to the staff members that handled the most number of transactions(most in the number of transactions not the ttal amount processed)
How many payments did each staff member handle and who gets the bonus?*/

SELECT staff_id,COUNT(*) FROM payment
GROUP BY staff_id
ORDER BY COUNT(*) DESC;


/*what is the avg replacement cost per MPAA rating?*/
SELECT rating, ROUND(AVG(replacement_cost),2) FROM film
GROUP BY rating 
ORDER BY AVG(replacement_cost)

/*What are the customer_id f the top 5 customers by total spend?*/
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;