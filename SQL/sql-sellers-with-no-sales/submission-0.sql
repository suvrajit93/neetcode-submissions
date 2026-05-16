with cte as(
select c.seller_name
from seller c
where c.seller_id NOT IN (
    select seller_id from orders where DATE_PART('year', sale_date) = 2020
)
)
select seller_name from cte order by seller_name