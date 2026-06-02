# Write your MySQL query statement below
DELETE t1
from Person as t1
join Person as t2
on  t1.id > t2.id AND t1.email = t2.email