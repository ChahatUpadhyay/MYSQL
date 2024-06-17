# Write your MySQL query statement below
Select x.user_id,
round(avg(if(y.action='confirmed',1,0)),2) 
as confirmation_rate 
from Signups x
left join Confirmations y
on x.user_id=y.user_id
group by x.user_id;
