# Write your MySQL query statement below
select person_name from(
select turn,person_name, sum(weight) 
over (order by turn) as sumweight
from Queue 
order by turn) a
where sumweight<=1000
order by sumweight DESC 
limit 1;
