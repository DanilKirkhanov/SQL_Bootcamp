SELECT ord.order_date AS order_date, 
CONCAT (person.name, ' (age:', person.age, ')') AS person_information
FROM (person_order AS ord(primary_id, id, menu_id, order_date)
	  NATURAL JOIN person)
ORDER BY order_date, person_information;