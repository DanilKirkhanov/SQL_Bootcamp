WITH forget_menu AS (SELECT id AS menu_id
FROM menu
EXCEPT
SELECT menu_id
FROM person_order
ORDER BY 1)

SELECT   menu.pizza_name, menu.price ,pizzeria.name AS pizzeria_name
FROM forget_menu JOIN menu
ON menu_id = menu.id
JOIN pizzeria
ON pizzeria.id = menu.pizzeria_id
ORDER BY 1,2;