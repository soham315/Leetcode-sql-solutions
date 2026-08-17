select MIN(ABS(p1.x-p2.x)) as Shortest
from point p1
cross join point p2
where p1.x < p2.x
