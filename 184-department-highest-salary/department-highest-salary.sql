WITH conjunto AS (SELECT 
    d.name as Department,
    e.name as Employee,
    salary as Salary,
    DENSE_RANK() OVER(PARTITION BY d.name ORDER BY salary DESC) as ranking
FROM Employee as e
LEFT JOIN Department as d ON d.id = e.departmentId)

SELECT
    Department,
    Employee,
    Salary
FROM conjunto
WHERE ranking = 1


