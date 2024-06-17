# Write your MySQL query statement below
Select max(num) as num
from (Select num
from Mynumbers
group by num
having count(num)=1) as newtable;
