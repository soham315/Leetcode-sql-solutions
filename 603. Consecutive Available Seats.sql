select x.seat_id from
(select seat_id,free,
lead(free) over (order by seat_id) as next_seat,
lag(free) over (order by seat_id) as prev_seat
from cinema c) x
where x.free=1 and x.next_seat=1 
or
 x.free=1 and x.prev_seat=1
 order by seat_id;
