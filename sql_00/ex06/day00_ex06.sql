SELECT (SELECT name FROM person WHERE person.id = person_order.person_id),
	CASE
		WHEN (SELECT name FROM person
		WHERE person.id = person_order.person_id) = 'Denis' THEN TRUE
		ELSE FALSE
	END
FROM person_order
WHERE (menu_id = 13 OR menu_id = 14 OR menu_id = 18) and order_date = '2022-01-7';
