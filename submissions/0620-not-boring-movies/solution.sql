-- Write your PostgreSQL query statement below
SELECT * FROM Cinema
WHERE id % 2 = 1 AND NOT description LIKE '%boring%'
ORDER BY rating DESC;
