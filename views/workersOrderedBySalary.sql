CREATE VIEW average_salary_per_hour
AS
SELECT WorkerId, Name, Role, SalaryPerHour, Email, JoinDate, BirthDate
FROM Worker
WHERE IsWorking(LeftDate)
ORDER BY SalaryPerHour desc