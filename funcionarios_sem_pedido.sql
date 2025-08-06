select 
d.first_name,
d.last_name 
from staffs d
left join orders e on e.staff_id = d.staff_id
where e.order_id is null
