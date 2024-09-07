SELECT order_date AS action_date,
(SELECT name FROM person WHERE person.id = person_order.person_id)
FROM person_order
INTERSECT
SELECT visit_date AS action_date, 
(SELECT name FROM person WHERE person.id = person_visits.person_id)
FROM person_visits
ORDER BY action_date, name DESC;