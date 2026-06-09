WITH tabela as(
    SELECT num,
        CASE
            WHEN count(*) = 1 THEN 1
            ELSE NULL
        END AS contagem
    FROM MyNumbers
    GROUP BY num
    ORDER BY contagem DESC, num DESC
) 

SELECT if(contagem = 1, num, null) as num
FROM tabela
LIMIT 1