-- All departments without workers
SELECT * FROM Department d
WHERE d.DepartmentId NOT IN
(SELECT DepartmentId FROM WorksAt NATURAL JOIN Department);
