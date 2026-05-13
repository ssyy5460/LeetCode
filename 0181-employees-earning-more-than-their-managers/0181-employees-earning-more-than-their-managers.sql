# Write your MySQL query statement below
SELECT E1.NAME AS EMPLOYEE
FROM EMPLOYEE E1
JOIN EMPLOYEE E2
ON E1.managerId = E2.id
WHERE E1.salary >= E2.salary;