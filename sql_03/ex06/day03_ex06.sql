SELECT m1.pizza_name, p1.name AS pizzeria_name_1, p2.name AS pizzeria_name_2, m2.price 
FROM menu AS m1 JOIN menu AS m2
ON m1.pizza_name = m2.pizza_name
JOIN pizzeria AS p1 
ON p1.id = m1.pizzeria_id
JOIN pizzeria AS p2
ON p2.id = m2.pizzeria_id
WHERE m1.price = m2.price AND p1.id > p2.id;