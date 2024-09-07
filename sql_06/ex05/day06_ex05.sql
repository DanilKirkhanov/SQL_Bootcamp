COMMENT ON TABLE person_discounts IS 'Таблица скидок для определенных людей в определенных пиццериях';
COMMENT ON COLUMN person_discounts.id IS 'Первичный ключ';
COMMENT ON COLUMN person_discounts.person_id IS 'Внешний ID человека';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Внешний ID пиццерии';
COMMENT ON COLUMN person_discounts.discount IS 'Скидка в %';