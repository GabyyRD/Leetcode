with maior as (select customer_number, count(*) as contagem
from Orders
group by customer_number)

select customer_number
from maior
where contagem = (select max(contagem) from maior)

