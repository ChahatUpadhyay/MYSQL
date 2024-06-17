# Write your MySQL query statement below
Select product_id,
new_price
as price
from products
where (product_id,change_date)
in
(Select product_id, max(change_date)  #sub query sa uthaya hai
from products
where change_date<='2019-08-16'
group by product_id)
UNION
Select product_id,
10
as price
from products
where (product_id)
not in
(   Select product_id  #idher bhi sub query
    from products
    where change_date<='2019-08-16'
    group by product_id)
