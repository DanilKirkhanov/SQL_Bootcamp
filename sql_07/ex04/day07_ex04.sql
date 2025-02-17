SELECT person.name, COUNT(person_visits.pizzeria_id) AS count_of_visits
FROM person_visits JOIN person
ON person.id = person_visits.person_id
GROUP BY 1
HAVING COUNT(person_visits.pizzeria_id) > 3;