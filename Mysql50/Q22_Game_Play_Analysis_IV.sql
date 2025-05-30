# Write your MySQL query statement below
Select 
round(sum(login)/count(distinct player_id),2) as fraction
from 
(Select player_id,
datediff(event_date,min(event_date) 
over (partition by player_id))=1 as login
from activity) as new_table;
