CREATE VIEW v_WorkingWorkersWithDepartment
AS
SELECT DepartmentId, DepartmentName, WorkerId, Name AS WorkerName, Role, SalaryPerHour, Email, JoinDate, BirthDate
FROM (SELECT DepartmentId, Name AS DepartmentName, WorkerId
      FROM WorksAt NATURAL JOIN Department) NATURAL JOIN
(SELECT * FROM Worker WHERE LeftDate IS NULL)
ORDER BY DepartmentId;

