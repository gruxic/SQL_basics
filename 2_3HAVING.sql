/*HAVING statement is used to make */
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;

/*HAVING CHALLENGE*/
/*Customer_id having 40 or more transactions*/
SELECT customer_id,COUNT(*) FROM payment
GROUP BY customer_id
HAVING COUNT(customer_id)>=40;
/*What are the customer_ids fo customers who have spent more than $100 in payment transactions with our staff_id member 2?*/
SELECT customer_id, SUM(amount) FROM payment
WHERE staff_id=2
GROUP BY customer_id
HAVING SUM(amount)>100;