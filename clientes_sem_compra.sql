select k.first_name, 
k.last_name 
from customers k
left join orders a on a.customer_id = k.customer_id
where a.order_id is null
