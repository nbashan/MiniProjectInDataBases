-- Finds departments that currently contains an exhibition but without any guards.
SELECT DepartmentId, Name
FROM Department INNER JOIN Soria.ExhibitionAtDepartment ON DepartmentId = Department_Id
WHERE DepartmentId NOT IN (
    SELECT DepartmentId
    FROM Department NATURAL JOIN WorksAt wa INNER JOIN Worker w ON wa.WorkerId = w.WorkerId
    WHERE LeftDate IS NULL AND Role = 'Guard'
);
