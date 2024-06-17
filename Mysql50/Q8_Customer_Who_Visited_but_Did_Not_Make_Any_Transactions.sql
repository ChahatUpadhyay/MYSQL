# Write your MySQL query statement below
Select x.customer_id,
count(x.visit_id) as count_no_trans 
from Visits x 
left join Transactions y 
on x.visit_id=y.visit_id 
where y.transaction_id is null
group by customer_id;
