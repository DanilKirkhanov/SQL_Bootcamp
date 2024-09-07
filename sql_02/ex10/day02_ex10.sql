WITH persons AS(SELECT person.name AS person_name1, person1.name AS person_name2, 
	   person.address AS address_1, person1.address AS adress_2,
	   person.id AS id_1, person1.id AS id_2
FROM person JOIN person AS person1
ON person.address = person1.address)

SELECT person_name1, person_name2, persons.address_1 AS common_address
FROM persons
WHERE persons.id_1>persons.id_2;