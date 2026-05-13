SELECT user_id, 
       CONCAT(
           UPPER(SUBSTRING(name, 1, 1)), -- 1번째 글자부터 1글자만 잘라서 대문자로
           LOWER(SUBSTRING(name, 2))    -- 2번째 글자부터 끝까지 잘라서 소문자로
       ) AS name
FROM Users
ORDER BY user_id;