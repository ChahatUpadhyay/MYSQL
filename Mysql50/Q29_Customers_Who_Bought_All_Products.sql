# Write your MySQL query statement below
Select customer_id 
from customer
group by customer_id
having count(distinct product_key)
=(Select count(product_key) from Product);
