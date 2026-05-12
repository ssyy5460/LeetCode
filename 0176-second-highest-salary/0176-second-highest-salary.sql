# Write your MySQL query statement below
SELECT
(SELECT DISTINCT salary # DISTINCT를 써야 1등이 2명일 때를 제외할 수 있음
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1) # LIMIT, OFFSET : 어디서부터 몇개를 가지고 올 것인지
AS SecondHighestSalary