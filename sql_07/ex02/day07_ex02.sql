(SELECT pizzeria.name, count(person_visits.pizzeria_id), 'visit' AS action_type
FROM person_visits JOIN pizzeria
ON person_visits.pizzeria_id = pizzeria.id
GROUP BY 1
LIMIT 3)
UNION ALL
(SELECT pizzeria.name, count(menu.pizzeria_id), 'order' AS action_type
FROM person_order JOIN menu
ON person_order.menu_id = menu.id
JOIN pizzeria
ON pizzeria.id = menu.pizzeria_id 
GROUP BY 1
LIMIT 3)
ORDER BY 3 ASC, 2 DESC;