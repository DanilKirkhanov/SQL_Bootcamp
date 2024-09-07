CREATE FUNCTION fnc_fibonacci(pstop INTEGER DEFAULT 10)
RETURNS TABLE(n INTEGER) AS $$
DECLARE
    a INTEGER := 0;
    b INTEGER := 1;
    fib INTEGER;
BEGIN
    WHILE b < pstop LOOP
        n := b;
        fib := a + b;
        a := b;
        b := fib;
        RETURN NEXT;
    END LOOP;
END;
$$ LANGUAGE PLPGSQL;

SELECT * FROM fnc_fibonacci(100);

SELECT * FROM fnc_fibonacci();
