-- Number of departments per wing
SELECT w.WingId, w.Name, COUNT(d.DepartmentId) AS Departments
FROM Wing w LEFT JOIN Department d
ON w.WingId = d.WingId
GROUP BY w.WingId, w.Name;
