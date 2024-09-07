CREATE FUNCTION fnc_person_visits_and_eats_on_date(in pperson varchar = 'Dmitriy',
												   in pprice numeric = 500,
												   in pdate date = '2022-01-08')
												  
RETURNS TABLE(
name varchar
) AS $$
SELECT DISTINCT pizzeria.name AS pizzeria_name
FROM person_visits JOIN person 
ON person_visits.person_id = person.id
JOIN pizzeria
ON pizzeria.id = person_visits.pizzeria_id 
JOIN menu
ON menu.pizzeria_id = pizzeria.id
WHERE person_visits.visit_date = pdate AND 	
	  person.name = pperson AND menu.price < pprice
$$ LANGUAGE sql;

SELECT *
FROM fnc_person_visits_and_eats_on_date(pprice := 800);

SELECT *
FROM fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');
