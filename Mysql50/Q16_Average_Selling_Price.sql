# Write your MySQL query statement below
Select x.product_id ,
ifnull(round(sum(x.price*y.units)/sum(y.units),2),0) 
as average_price
from Prices x
left join UnitsSold y
on x.product_id=y.product_id
and y.purchase_date between x.start_date and x.end_date
group by x.product_id;

/*left join yeha jaruri hai 
as we want the default 0 
condition to be also covered
*/
