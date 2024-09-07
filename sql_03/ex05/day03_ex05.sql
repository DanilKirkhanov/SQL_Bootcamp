WITH pv AS (SELECT pizzeria.name AS pizzeria_name
		FROM person_visits JOIN pizzeria
		ON person_visits.pizzeria_id = pizzeria.id
		JOIN person
		ON person.id = person_visits.person_id
		WHERE person.name = 'Andrey'),
po AS (SELECT pizzeria.name AS pizzeria_name
		FROM person_order JOIN menu 
		ON person_order.menu_id = menu.id
		JOIN pizzeria
		ON menu.pizzeria_id = pizzeria.id
		JOIN person
		ON person.id = person_order.person_id
		WHERE person.name = 'Andrey')
		
SELECT pizzeria_name
FROM pv
EXCEPT
SELECT pizzeria_name
FROM po;