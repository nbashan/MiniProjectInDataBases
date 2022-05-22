CREATE VIEW totalSalaryPerMonth
AS
SELECT sum(SalaryPerHour)*160
FROM Worker
