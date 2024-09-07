SELECT person.name, menu.pizza_name ,menu.price,
(menu.price * ((100 - person_discounts.discount)/100))::int AS discount_price,
pizzeria.name AS pizzeria_name
FROM person JOIN person_order
ON person.id = person_order.person_id
JOIN menu
ON person_order.menu_id = menu.id
JOIN pizzeria
ON pizzeria.id = menu.pizzeria_id
JOIN person_discounts ON person.id = person_discounts.person_id AND pizzeria.id = person_discounts.pizzeria_id
ORDER BY 1,2