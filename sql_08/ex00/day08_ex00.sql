-- 1
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';
SELECT * FROM pizzeria;

-- 2
SELECT * FROM pizzeria;

-- 1
COMMIT;

-- 2
SELECT * FROM pizzeria;