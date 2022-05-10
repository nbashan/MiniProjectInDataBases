CREATE VIEW v_WorkingManagers
AS
SELECT WorkerId, Name, Role, SalaryPerHour, Email, JoinDate, BirthDate
FROM Worker WHERE LeftDate IS NULL AND Role == 'Manager';

