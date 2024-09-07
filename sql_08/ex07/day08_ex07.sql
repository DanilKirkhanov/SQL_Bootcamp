-- 1
BEGIN;

--2
BEGIN;

-- 1
UPDATE pizzeria SET rating = 2.2 WHERE id = 1;

--2
UPDATE pizzeria SET rating = 3.3 WHERE id = 2;

-- 1
UPDATE pizzeria SET rating = 4.4 WHERE id = 2;

-- 2
UPDATE pizzeria SET rating = 1.1 WHERE id = 1;

-- 1
COMMIT;

-- 2
COMMIT;