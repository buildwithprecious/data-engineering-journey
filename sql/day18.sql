select
orderid, 
productid,
sum(sales) aggsales
from sales.orders
group by sales, orderid, productid


select
orderid,
productid,
sum(sales) over(partition by productid) aggsales
from sales.orders
