SELECT name, SUM(count_vis+count_ord) AS total_count
FROM((SELECT pizzeria.name, count(person_visits.pizzeria_id) AS count_vis, 0 AS count_ord
FROM person_visits JOIN pizzeria
ON person_visits.pizzeria_id = pizzeria.id
GROUP BY 1)
UNION ALL
(SELECT pizzeria.name, 0 AS count_vis, count(menu.pizzeria_id) AS count_ord
FROM person_order JOIN menu
ON person_order.menu_id = menu.id
JOIN pizzeria
ON pizzeria.id = menu.pizzeria_id 
GROUP BY 1)) AS dd
GROUP BY 1
ORDER BY 2 DESC, 1 ASC;