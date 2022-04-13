
SELECT * FROM Department;

SELECT * FROM Wing;

SELECT * FROM Worker;

-- All workers that are currently working
SELECT * FROM Worker WHERE LeftDate is NULL;

-- Number of workers per department
SELECT DepartmentId, COUNT(*) AS Workers
FROM WorksAt NATURAL JOIN Department
GROUP BY DepartmentId;

-- Number of workers per wing
SELECT WingId, COUNT(*)
FROM Worker NATURAL JOIN WorksAt NATURAL JOIN Department NATURAL JOIN Wing
GROUP BY WingId;

-- All departments without workers
SELECT * FROM Department d
WHERE d.DepartmentId NOT IN
(SELECT DepartmentId FROM WorksAt NATURAL JOIN Department);
