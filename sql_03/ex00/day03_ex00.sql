WITH visit_kate AS(SELECT *
				   FROM person JOIN person_visits
				   ON person.id = person_visits.person_id
				   WHERE person.name = 'Kate'),
price_menu AS (SELECT menu.pizza_name, menu.price, visit_kate.pizzeria_id, visit_kate.visit_date 
				   FROM menu JOIN visit_kate
				   ON visit_kate.pizzeria_id = menu.pizzeria_id
				   WHERE menu.price>=800 and menu.price<=1000)
SELECT price_menu.pizza_name, price_menu.price, pizzeria.name AS pizzeria_name, price_menu.visit_date 
FROM price_menu JOIN pizzeria
ON pizzeria.id = price_menu.pizzeria_id
ORDER BY 1,2,3;