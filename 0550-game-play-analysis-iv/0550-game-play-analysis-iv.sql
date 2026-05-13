SELECT 
    ROUND(COUNT(a2.player_id) / COUNT(a1.player_id), 2) AS fraction
FROM (
    # 각 플레이의 첫 로그인 날짜
    SELECT player_id, MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id
) a1
LEFT JOIN Activity a2
    ON a1.player_id = a2.player_id
    AND DATEDIFF(a2.event_date, a1.first_login) = 1;
# 첫 로그일 날짜와 evenet_date의 날짜 차이가 1일