-- Write your query below
select name from customers a
where id not in( select customer_id from orders where customer_id = a.id)