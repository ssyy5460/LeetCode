# Unitsold는 중복된 행이 있을 것으로 보임
# 판매 가격의 평균 =  상품의 팔민 가격 / 상품의 전체 가격

SELECT 
    p.product_id, 
    IFNULL(ROUND(SUM(p.price * u.units) / SUM(u.units), 2), 0) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
    ON p.product_id = u.product_id
    AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;