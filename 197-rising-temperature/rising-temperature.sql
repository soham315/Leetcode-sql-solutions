# Write your MySQL query statement below
select id from
(select
id,
recordDate,
lag(recordDate) over(order by recordDate) as prev_date,
temperature,
lag(temperature) over(order by recordDate) as prev_day_temp
from weather) as new_table
where temperature > prev_day_temp and DateDiff(recordDate , Prev_date )= 1;