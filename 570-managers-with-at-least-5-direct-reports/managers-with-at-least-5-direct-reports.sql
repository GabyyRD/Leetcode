with gerente as (select t1.name as empregado , t2.name as manager, t2.id, count(t1.managerId) as quantidade
from Employee as t1
left join Employee as t2 on t1.managerId = t2.id
group by t2.name, t1.managerId
having quantidade >= 5)

select manager as name
from gerente
where id is not null
