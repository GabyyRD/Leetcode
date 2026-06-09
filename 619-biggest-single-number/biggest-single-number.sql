SELECT 
    CASE
        WHEN count(*) = 1 THEN num
        ELSE NULL
    END AS num
FROM MyNumbers
GROUP BY num
ORDER BY num DESC
LIMIT 1
