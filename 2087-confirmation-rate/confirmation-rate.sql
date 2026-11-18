select s.user_id , case when c.user_id is NULL THEN 0.00
ELSE round(sum(c.action='confirmed')/count(*),2) end as confirmation_rate 
from Signups s
left join Confirmations c
on s.user_id = c.user_id
group by s.user_id