# Write your MySQL query statement below
Delete x 
from person x
inner join person y
on x.email=y.email
and x.id>y.id;
