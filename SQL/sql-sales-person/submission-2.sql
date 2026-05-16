with cte as(
select a.sales_id as emp_id
from sales_person a left join orders c on a.sales_id = c.sales_id
left join company b on b.com_id = c.com_id
where b.name = 'CRIMSON'
)
select name from sales_person where 
sales_id not in(select emp_id from cte)