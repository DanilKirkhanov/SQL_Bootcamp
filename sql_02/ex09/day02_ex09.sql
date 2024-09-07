WITH woman AS (SELECT *
FROM person
WHERE gender = 'female'),
	 orders AS (SELECT woman.name,
			   person_order.person_id,
			   person_order.menu_id,
			   menu.pizza_name
			   FROM person_order
			   JOIN woman ON person_order.person_id = woman.id
			   JOIN menu ON person_order.menu_id = menu.id)
SELECT orders.name
FROM orders
WHERE orders.pizza_name = 'cheese pizza'
AND EXISTS(SELECT orders1.name
		  FROM orders AS orders1
		  WHERE orders1.pizza_name = 'pepperoni pizza'
		  AND orders.name = orders1.name);