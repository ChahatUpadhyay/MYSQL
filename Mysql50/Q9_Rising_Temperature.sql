# Write your MySQL query statement below
Select x.id
from Weather x,Weather y 
where datediff(x.recordDate,y.recordDate)=1 
and x.temperature>y.temperature;
