CREATE VIEW v_symmetric_union AS
WITH R AS (SELECT *
		  FROM person_visits
		  WHERE visit_date ='2022-01-02'),
S AS (SELECT *
		  FROM person_visits
		  WHERE visit_date ='2022-01-06'),
R_S AS (SELECT R.person_id
		  FROM R
		  EXCEPT
		  SELECT S.person_id
		  FROM S),
S_R AS (SELECT S.person_id
		  FROM S
		  EXCEPT
		  SELECT R.person_id
		  FROM R)
SELECT *
FROM R_S
UNION
SELECT *
FROM S_R;