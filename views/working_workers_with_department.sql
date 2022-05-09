CREATE VIEW v_WorkingWorkersWithDepartment
AS
SELECT * FROM WorksAt NATURAL JOIN
(SELECT * FROM Worker WHERE LeftDate IS NULL) t;

