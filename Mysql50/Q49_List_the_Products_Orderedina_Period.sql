# Write your MySQL query statement below
Select x.product_name,
sum(y.unit) as unit
from products x
left join Orders y
on x.product_id=y.product_id
where extract(year_month from y.order_date)=202002
group by y.product_id
having unit>=100;
