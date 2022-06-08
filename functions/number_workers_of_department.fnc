CREATE OR REPLACE FUNCTION NumberWorkersOfDepartment(departmentId_ INT)
RETURN INT
AS
DECLARE
    result INT;
BEGIN
    SELECT COUNT(*) INTO result
    FROM Department NATURAL JOIN WorksAt wa
         INNER JOIN Worker w ON w.WorkerId = wa.WorkerId
    WHERE IsWorking(leftDate) = 1
    GROUP BY DepartmentId;

    RETURN result;
END;
