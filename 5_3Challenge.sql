/*Payment months in full month name*/
SELECT DISTINCT TO_CHAR(payment_date,'MONTH') FROM payment

/*How many payments occured on a monday*/
SELECT TO_CHAR(payment_date,'DAY') ,COUNT(*) FROM payment
GROUP BY TO_CHAR(payment_date,'DAY')

/*or*/
SELECT COUNT(*) FROM payment
WHERE EXTRACT(dow FROM payment_date)=1
