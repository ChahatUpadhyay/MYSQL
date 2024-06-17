# Write your MySQL query statement below
Select x.name 
from Employee x 
join Employee y 
on x.id=y.managerId
group by y.managerId
having count(y.managerId)>=5; 
