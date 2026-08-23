-- With CTE as(select customer_number , count(order_number) as order_count
-- from orders
-- group by customer_number)

-- select customer_number from CTE where order_count = (select max(order_count) from cte)

with cte as(select customer_number,count(order_number) as count_order
from orders
group by customer_number)

select customer_number from cte where count_order = (select max(count_order) from cte)