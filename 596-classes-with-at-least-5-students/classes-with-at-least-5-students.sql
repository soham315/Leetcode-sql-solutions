-- SELECT class
-- FROM courses
-- GROUP BY class
-- HAVING COUNT(student) >= 5;

WITH CTE AS (
    SELECT class, COUNT(student) AS student_count
    FROM courses
    GROUP BY class
)
SELECT class
FROM CTE
WHERE student_count >= 5;