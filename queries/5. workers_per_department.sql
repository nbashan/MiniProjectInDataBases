-- Number of working workers per department
SELECT DepartmentId, Name, COUNT(*) AS Workers
FROM WorksAt NATURAL JOIN Department
WHERE WorkerId IN (SELECT WorkerId FROM Worker WHERE LeftDate IS NULL)
GROUP BY DepartmentId, Name;
