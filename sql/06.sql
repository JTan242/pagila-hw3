/*
 * This question and the next one are inspired by the Bacon Number:
 * https://en.wikipedia.org/wiki/Six_Degrees_of_Kevin_Bacon#Bacon_numbers
 *
 * List all actors with Bacall Number 1.
 * That is, list all actors that have appeared in a film with 'RUSSELL BACALL'.
 * Do not list 'RUSSELL BACALL', since he has a Bacall Number of 0.
 */
SELECT DISTINCT other_actors.first_name || ' ' || other_actors.last_name AS "Actor Name"
FROM actor AS russell_bacall
JOIN film_actor AS bacall_films ON russell_bacall.actor_id = bacall_films.actor_id
JOIN film_actor AS other_film_actors ON bacall_films.film_id = other_film_actors.film_id
JOIN actor AS other_actors ON other_film_actors.actor_id = other_actors.actor_id
WHERE russell_bacall.first_name || ' ' || russell_bacall.last_name = 'RUSSELL BACALL'
AND other_actors.first_name || ' ' || other_actors.last_name != 'RUSSELL BACALL'
ORDER BY "Actor Name";

