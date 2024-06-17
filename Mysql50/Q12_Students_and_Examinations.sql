# Write your MySQL query statement below
Select x.student_id ,x.student_name,
y.subject_name,count(z.subject_name) 
as attended_exams 
from students x 
cross join Subjects y
left join  Examinations z
on x.student_id=z.student_id
and y.subject_name=z.subject_name
group by x.student_id ,x.student_name, y.subject_name
order by x.student_id, y.subject_name;
