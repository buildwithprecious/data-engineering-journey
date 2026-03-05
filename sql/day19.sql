--rank each other based on their sales from the highesxt to the lowest
--and provide additonal info like order id and order date
select 
orderid,
productid,
orderdate,
quantity,
sales,
rank() over (order by sales desc) as ranksales
from sales.orders

