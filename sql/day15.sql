--find the average shipping duration in days for each month 
select 
avg(datediff(day, orderdate, shipdate)) shipduration,
datename(month, shipdate) months
from sales.orders
group by datename(month, shipdate) 


--find the number of days between each order and previous order 
select 
orderdate as curdates, 
lag(orderdate) over (order by orderdate) newdare,
datediff(day, lag(orderdate) over (order by orderdate), orderdate) datdiff
from sales.orders
