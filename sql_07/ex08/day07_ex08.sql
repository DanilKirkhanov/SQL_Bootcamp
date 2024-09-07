select person.address, pizzeria.name, count(menu.pizzeria_id)
from person_order join menu
on person_order.menu_id = menu.id
join person
on person.id = person_order.person_id
join pizzeria
on pizzeria.id = menu.pizzeria_id
group by 1,2
order by 1,2;