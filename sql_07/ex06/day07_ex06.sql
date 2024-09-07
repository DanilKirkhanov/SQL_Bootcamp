SELECT pizzeria.name, COUNT(menu.pizzeria_id),ROUND(AVG(menu.price),2) AS average_price,
MAX(menu.price) AS max_price, MIN(menu.price) AS min_price
FROM person_order JOIN menu
ON person_order.menu_id = menu.id
JOIN pizzeria
ON pizzeria.id = menu.pizzeria_id
GROUP BY 1
ORDER BY 1;