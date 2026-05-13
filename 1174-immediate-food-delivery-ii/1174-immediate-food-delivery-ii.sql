# 같은 날짜에 주문 IMMEDIATE, 아니라면 SCHEDULED,
# FIRST ORDER는 해당 고객이 만든 가장 빠른 ORDER
# 첫번째 주문에서 즉시 주문 / ALL CUSTOMER
# 각 고객별 첫번째 주문 뽑고, 또 주문했는지

#  2,,4 / 4명

SELECT ROUND( 
    SUM(CASE WHEN ORDER_DATE = customer_pref_delivery_date THEN 1 ELSE 0 END) /COUNT(CUSTOMER_ID) * 100, 2) AS immediate_percentage
FROM Delivery
WHERE (CUSTOMER_ID, ORDER_DATE) IN (
    SELECT CUSTOMER_ID, MIN(ORDER_DATE)
    FROM DELIVERY
    GROUP BY CUSTOMER_ID
);
