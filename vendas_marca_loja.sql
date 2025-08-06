select  
n.brand_name, 
c.store_name, 
count (s.product_id) as total
from order_items s
inner join products t on t.product_id = s.product_id
inner join brands n on n.brand_id = t.brand_id
inner join orders l on l.order_id = s.order_id
inner join stores c on c.store_id = l.store_id
group by n.brand_name, c.store_name
order by n.brand_name, c.store_name
