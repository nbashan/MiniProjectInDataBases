-- Find all departments that don't have a manager
SELECT DepartmentId, Name FROM Department
WHERE DepartmentId IN (SELECT DepartmentId FROM Department
                       MINUS
                       SELECT d.DepartmentId
                       FROM Worker NATURAL JOIN WorksAt wa INNER JOIN Department d ON d.DepartmentId = wa.DepartmentId
                       WHERE Role = 'Manager');
