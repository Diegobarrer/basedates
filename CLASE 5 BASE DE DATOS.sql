SELECT * FROM film
WHERE amount BETWEEN 2 AND 5;

SELECT description, rental_rate, title
FROM film
WHERE description ILIKE '%fron%' AND rental_rate = 4.99 AND title ILIKE '%Airport%';

SELECT title MAX (rental_duration) From film
LIMIT 1;

SELECT * FROM payment 

ORDER BY payment_date DESC
LIMIT 282;

SELECT customer_id, SUM(amount) FROM payment 
GROUP BY customer_id 

SELECT customer_id, SUM (amount) FROM payment 
GROUP BY customer_id
ORDER BY SUM (amount) DESC
LIMIT 4;

SELECT SUM(amount)  FROM payment
GROUP BY amount;

SELECT ROUND (AVG(amount),2) FROM payment

SELECT MIN (amount), MAX (amount),ROUND (AVG (amount),2) FROM payment;

SELECT customer_id, SUM (amount) FROM payment 
GROUP BY customer_id
HAVING SUM (amount) >200
ORDER BY SUM (amount) ASC




