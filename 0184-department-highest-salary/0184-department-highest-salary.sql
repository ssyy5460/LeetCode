# Write your MySQL query statement below
# 서브 쿼리 문제
SELECT Department, Employee, Salary
FROM (
    SELECT
        D.name AS Department, E.name AS Employee, E.salary AS Salary,
        RANK() OVER(PARTITION BY E.departmentId ORDER BY E.salary DESC) AS rnk
    FROM Employee E
    JOIN Department D ON E.departmentId = D.id   
) temp
WHERE rnk = 1;