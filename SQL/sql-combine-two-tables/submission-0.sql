select
a.first_name,
a.last_name,
COALESCE(b.city,null) as city,
COALESCE(b.state,null) as state
from person a left join address b
on a.person_id = b.person_id