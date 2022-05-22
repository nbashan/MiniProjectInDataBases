CREATE VIEW workersOrderedBySalary
AS
SELECT WorkerId, Name, Role, SalaryPerHour, Email, JoinDate, BirthDate
FROM Worker
WHERE IsWorking(LeftDate)
ORDER BY SalaryPerHour desc