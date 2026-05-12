# Write your MySQL query statement below
# bonus < 1000 or 못 받은 사ㅏㄹㅁ

SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b
    ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL;