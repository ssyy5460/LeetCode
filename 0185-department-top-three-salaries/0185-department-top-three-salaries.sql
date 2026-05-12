# Write your MySQL query statement below
# IT : 최고로 높은 유니크한 급여

SELECT Department, Employee, Salary
FROM
    (SELECT D.name AS Department, E.name AS Employee, E.salary AS Salary,
    DENSE_RANK() OVER(PARTITION BY D.name ORDER BY E.salary DESC) AS rnk
    FROM Employee E 
    LEFT JOIN Department D
    ON E.departmentId = D.id
) temp
WHERE rnk <= 3;