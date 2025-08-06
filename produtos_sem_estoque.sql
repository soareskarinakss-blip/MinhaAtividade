select r.product_name 
from products r
left join stocks i on i.product_id = r.product_id
where i.quantity is null or i.quantity = 0
