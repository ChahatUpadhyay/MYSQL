# Write your MySQL query statement below
Select contest_id,
round((count(distinct user_id) * 100.0) / 
(SELECT COUNT(user_id) FROM Users), 2) 
as percentage
from Register
group by contest_id
order by percentage desc,
contest_id asc;
