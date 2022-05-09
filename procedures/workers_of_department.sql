-- Select workers working at a specific department
CREATE OR REPLACE WorkersOfDepartment (INT departmentId)
IS
BEGIN
    SELECT *
    FROM WorksAt NATURAL JOIN Worker
    WHERE DepartmentId == departmentId
END
