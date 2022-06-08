-- Find all departments that currently don't contains any exhibitions.
SELECT DepartmentId, Name FROM Department
WHERE DepartmentId NOT IN (
    SELECT Department_Id
    FROM Soria.ExhibitionAtDepartment NATURAL JOIN Soria.Exhibition
    WHERE StartTime <= CURRENT_DATE AND CURRENT_DATE <= EndTime
);
