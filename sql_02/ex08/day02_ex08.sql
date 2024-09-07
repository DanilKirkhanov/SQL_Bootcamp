SELECT p.name
FROM (SELECT *
	 FROM person
	 WHERE (address = 'Moscow' OR address = 'Samara') AND gender = 'male') AS p
JOIN person_order
ON person_order.person_id = p.id
JOIN (SELECT *
	 FROM menu
	 WHERE pizza_name = 'pepperoni pizza' OR pizza_name = 'mushroom pizza') AS m
ON person_order.menu_id = m.id
ORDER BY name DESC;