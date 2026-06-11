CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
    SELECT DISTINCT salary
    FROM (
        SELECT
            DENSE_RANK() OVER (ORDER BY salary DESC) AS slr,
            salary
        FROM Employee
    ) AS salario_ordenado
    WHERE slr = N
  );
END