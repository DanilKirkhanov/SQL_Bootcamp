SET ENABLE_SEQSCAN TO OFF;
EXPLAIN ANALYZE SELECT menu.pizza_name, pizzeria.name AS pizzeria_name
FROM pizzeria JOIN menu
ON pizzeria.id = menu.pizzeria_id;
