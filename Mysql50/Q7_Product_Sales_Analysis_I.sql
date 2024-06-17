# Write your MySQL query statement below
Select x.product_name,
y.year,y.price 
from Product x 
join Sales y 
on x.product_id=y.product_id;
