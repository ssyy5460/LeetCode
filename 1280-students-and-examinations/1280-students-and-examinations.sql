# 학생들이 시험에 참여한 횟수
# 학생 아이디와 과목 이름별로 정렬
# 모든 학생의 모든 과목을 다 나타내야함

SELECT s.student_id, s.student_name, sub.subject_name, 
    COUNT(e.student_id) AS attended_exams
FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e
    ON s.student_id = e.student_id AND sub.subject_name = e.subject_name
GROUP BY student_id, subject_name
ORDER BY student_id , subject_name