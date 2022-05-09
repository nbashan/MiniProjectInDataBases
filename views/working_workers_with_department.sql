CREATE VIEW v_WorkingWorkersWithDepartment
AS
SELECT DepartmentId, WorkerId, Name, Role, SalaryPerHour, Email, JoinDate, BirthDate
FROM WorksAt NATURAL JOIN
(SELECT * FROM Worker WHERE LeftDate IS NULL) t
ORDER BY DepartmentId;

