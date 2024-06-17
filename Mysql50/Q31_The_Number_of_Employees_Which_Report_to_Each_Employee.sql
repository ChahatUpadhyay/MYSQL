# Write your MySQL query statement below
Select x.employee_id, 
x.name,
count(y.reports_to)
as reports_count,
round(avg(y.age))
as average_age
from employees x
inner join employees y
on x.employee_id=y.reports_to
group by x.employee_id
order by x.employee_id;
