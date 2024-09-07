select address, formula, average, formula > average as comparison
from (select distinct address,
	round(max(age::numeric) - (min(age::numeric)/max(age::numeric)), 2) as formula,
	round(avg(age::numeric),2) as average
from person
group by 1) as dd
order by 1;