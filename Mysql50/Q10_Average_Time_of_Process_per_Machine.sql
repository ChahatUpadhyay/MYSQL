# Write your MySQL query statement below
Select x.machine_id,
round(avg(y.timestamp-x.timestamp),3)
as processing_time
from Activity x 
join Activity y 
where x.machine_id=y.machine_id 
and x.process_id=y.process_id 
and y.timestamp>x.timestamp
group by machine_id;
