-- Number of workers per department
SELECT DepartmentId, Name, COUNT(*) AS Workers
FROM WorksAt NATURAL JOIN Department
GROUP BY DepartmentId, Name;
