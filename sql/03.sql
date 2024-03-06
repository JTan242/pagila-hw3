/*
 * List the total amount of money that customers from each country have payed.
 * Order the results from most to least money.
 */
SELECT country.country, SUM(payment.amount) AS total_payments
FROM payment
JOIN customer using (customer_id)
JOIN address using (address_id)
JOIN city using (city_id)
JOIN country using (country_id)
GROUP BY country.country
ORDER BY "total_payments" DESC, country.country ASC;
