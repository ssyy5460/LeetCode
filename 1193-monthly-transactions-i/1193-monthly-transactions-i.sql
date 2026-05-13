# Write your MySQL query statement below
# 년월, 나라로 GROUBPY
# TRANS_COUNT : STATE COUNT
# APPROVED_COUNT : STATE = 'AP' COUNT
# TRANS_TOTAL_AMOUNT : AMOUNT SUM
# APP_AMOUNT : AP AMOUNT

SELECT 
    DATE_FORMAT(trans_date, '%Y-%m') as month,
    country, 
    COUNT(id) AS trans_count,
    SUM(CASE WHEN
        state = 'approved' THEN 1 ELSE 0 END) as approved_count,
    SUM(amount) as trans_total_amount,
    SUM(CASE WHEN
        state = 'approved' THEN amount ELSE 0 END) as approved_total_amount
FROM TRANSACTIONS
GROUP BY MONTH, COUNTRY;