# Write your MySQL query statement below
SELECT DISTINCT ST.student_id, ST.student_name, SU.subject_name, COUNT(E.student_id) AS attended_exams
FROM Students AS ST
CROSS JOIN Subjects AS SU
LEFT JOIN Examinations AS E
ON E.subject_name = SU.subject_name
AND ST.student_id = E.student_id
GROUP BY ST.student_id, ST.student_name, SU.subject_name
ORDER BY ST.student_id, SU.subject_name ASC
