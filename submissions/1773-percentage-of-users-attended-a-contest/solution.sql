# Write your MySQL query statement below
SELECT R.contest_id,
    ROUND(COUNT(R.user_id) / (SELECT COUNT(U.user_id) FROM Users AS U) * 100, 2) AS percentage
FROM Register AS R
GROUP BY R.contest_id
ORDER BY percentage DESC, R.contest_id ASC
