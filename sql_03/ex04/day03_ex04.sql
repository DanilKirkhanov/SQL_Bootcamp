WITH po AS (SELECT person_id, pizzeria.name AS pizzeria_name
		FROM person_order JOIN menu 
		ON menu.id = person_order.menu_id
		JOIN pizzeria
		ON menu.pizzeria_id = pizzeria.id), 
male AS (SELECT pizzeria_name
		FROM po JOIN person
		ON person.id = po.person_id
		WHERE gender = 'male'),
female AS (SELECT pizzeria_name
		FROM po JOIN person
		ON person.id = po.person_id
		WHERE gender = 'female'),
only_male AS (SELECT *
		FROM male
		EXCEPT
		SELECT *
		FROM female),
only_female AS (SELECT *
		FROM female
		EXCEPT
		SELECT *
		FROM male)

SELECT *
FROM only_male
UNION
SELECT *
FROM only_female
ORDER BY 1;