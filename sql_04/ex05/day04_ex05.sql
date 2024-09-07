CREATE VIEW v_price_with_discount AS
SELECT person.name, menu.pizza_name, menu.price, ROUND(menu.price * 0.9)::integer AS discount_price
FROM person_order JOIN person
ON person_order.person_id = person.id
JOIN menu
ON menu.id = person_order.menu_id
ORDER BY 1,2;