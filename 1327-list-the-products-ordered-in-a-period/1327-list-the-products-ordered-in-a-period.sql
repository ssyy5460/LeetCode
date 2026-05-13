# Write your MySQL query statement below
# 최소 100개 unit in Februray 2020

SELECT p.product_name as product_name, SUM(o.unit) as unit
FROM Products p
    LEFT JOIN Orders o
    ON p.product_id = o.product_id
WHERE order_date LIKE '2020-02%'
GROUP BY p.product_id
HAVING SUM(unit) >= 100;