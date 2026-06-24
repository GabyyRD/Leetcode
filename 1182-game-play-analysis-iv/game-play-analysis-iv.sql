with sequencia as (select
    dia1.player_id as jogador1,
    dia2.player_id as jogador2,
    dia1.event_date as entradaDeJ1,
    dia2.event_date as entradaDeJ2,
    row_number() over(partition by dia1.player_id order by dia1.event_date) as rn
from Activity as dia1
left join Activity as dia2
    on dia1.event_date = DATE_ADD(dia2.event_date, INTERVAL 1 DAY)
    and dia1.player_id = dia2.player_id)

select
    round(count(CASE WHEN rn = 2 AND jogador1 = jogador2 then jogador2 END)/count(distinct jogador1), 2) as fraction
from sequencia
