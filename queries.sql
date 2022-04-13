
SELECT * FROM Department;

SELECT * FROM Wing;

SELECT * FROM Worker;

-- All workers that are currently working
SELECT * FROM Worker WHERE LeftDate is NULL;

-- Number of workers per department
SELECT DepartmentId, Name, COUNT(*) AS Workers
FROM WorksAt NATURAL JOIN Department
GROUP BY DepartmentId, Name;

-- Number of departments per wing
SELECT w.WingId, w.Name, COUNT(d.DepartmentId) AS Departments
FROM Wing w LEFT JOIN Department d
ON w.WingId = d.WingId
GROUP BY w.WingId w.Name;

-- All departments without workers
SELECT * FROM Department d
WHERE d.DepartmentId NOT IN
(SELECT DepartmentId FROM WorksAt NATURAL JOIN Department);
