CREATE FUNCTION fnc_persons(in pgender varchar default 'female')
RETURNS TABLE (id bigint, name varchar,
age int, gender varchar, address varchar)
AS $$ 
	SELECT *
	FROM person
	WHERE gender = pgender
	$$ LANGUAGE sql;


SELECT *
FROM fnc_persons(pgender := 'male');

SELECT *
FROM fnc_persons();
