# Write your MySQL query statement below
Select x.project_id, 
round(avg(y.experience_years),2) as average_years
from Project x
left join Employee y
on x.employee_id=y.employee_id
group by x.project_id;
