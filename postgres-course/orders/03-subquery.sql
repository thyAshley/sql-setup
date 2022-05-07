select name, price from products
where price > (
  select Max(price) from products
  where products.department = 'Toys'
)

-- sub query in select statement
select name, price, price / (select max(price) from phones) as price_ratio from phones

-- sub query in from statement
select MAX(p.avg_price) 
from (
  select AVG(price) as avg_price 
  from phones
  group by manufacturer
)
