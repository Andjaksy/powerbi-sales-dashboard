-- Top Selling Products

select product_name,
       sum(quantity) as total_quantity
from orders
group by product_name
order by total_quantity desc;



-- Sales and Profit by Region

select region,
       sum(sales) as total_sales,
       sum(profit) as total_profit
from orders
group by region;


-- Loss-Making Products

select product_name,
       sum(profit) as total_profit
from orders
group by product_name
having sum(profit) < 0;