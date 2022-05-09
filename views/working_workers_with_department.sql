CREATE VIEW v_WorkingWorkersWithDepartment
AS
SELECT WorkerId, Name, Role, SalaryPerHour, Email, JoinDate, BirthDate, DepartmentId
FROM WorksAt NATURAL JOIN
(SELECT * FROM Worker WHERE LeftDate IS NULL) t;

