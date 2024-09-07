WITH pv AS (SELECT person_id, pizzeria.name AS pizzeria_name
		FROM person_visits JOIN pizzeria 
		ON pizzeria_id = pizzeria.id), 
male AS (SELECT pizzeria_name
		FROM pv JOIN person
		ON person.id = pv.person_id
		WHERE gender = 'male'),
female AS (SELECT pizzeria_name
		FROM pv JOIN person
		ON person.id = pv.person_id
		WHERE gender = 'female'),
only_male AS (SELECT *
		FROM male
		EXCEPT ALL
		SELECT *
		FROM female),
only_female AS (SELECT *
		FROM female
		EXCEPT ALL
		SELECT *
		FROM male)

SELECT *
FROM only_male
UNION ALL
SELECT *
FROM only_female
ORDER BY 1;