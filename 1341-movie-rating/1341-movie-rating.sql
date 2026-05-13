# 가장 많은 리뷰를 남긴 사람 사전순으로 정렬
# 2020년 2월 가장 높은 평점의 영화명. 사전순으로
(SELECT u.name AS results
FROM MovieRating mr
LEFT JOIN Users u
ON u.user_id = mr.user_id
GROUP BY mr.user_id
ORDER BY COUNT(*) DESC, u.name ASC
LIMIT 1
 )
UNION ALL
(SELECT m.title AS results
FROM MovieRating mr
LEFT JOIN Movies m 
ON mr.movie_id = m.movie_id
WHERE DATE_FORMAT(mr.created_at, '%Y-%m') = '2020-02'
GROUP BY mr.movie_id
ORDER BY AVG(mr.rating) DESC, m.title ASC 
LIMIT 1);
