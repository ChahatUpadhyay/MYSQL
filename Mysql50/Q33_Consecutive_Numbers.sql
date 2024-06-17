# Write your MySQL query statement below
Select x.num as ConsecutiveNums
from Logs x,Logs y,Logs z
where x.id-y.id=1
and y.id-z.id=1
and x.num=y.num
and y.num=z.num
and z.num=x.num
group by x.num;
