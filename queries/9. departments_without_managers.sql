-- Find all departments that don't have a manager
SELECT * FROM Department
WHERE DepartmentId IN (SELECT DepartmentId FROM Department
                       MINUS
                       SELECT DepartmentId
                       FROM Worker NATURAL JOIN WorksAt NATURAL JOIN Department
                       WHERE Role = 'Manager');
