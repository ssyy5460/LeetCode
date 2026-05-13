# Write your MySQL query statement below
# 연달아서 같은 숫자
SELECT DISTINCT L1.num  AS ConsecutiveNums 
FROM LOGS L1
JOIN LOGS L2 ON L1.ID = L2.ID - 1
JOIN LOGS L3 ON L1.ID = L3.ID - 2
WHERE L1.num= L2.num AND L2.NUM = L3.NUM;