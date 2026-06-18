WITH sequencia AS( SELECT
    id,
    num,
    LAG(num) OVER(ORDER BY id) as anterior,
    LEAD(num) OVER(ORDER BY id) as sucessor
FROM Logs)

SELECT
    DISTINCT num as ConsecutiveNums
FROM sequencia
WHERE anterior = sucessor AND sucessor = num