-- Calculate the salary to pay for workers per an average month (30 days with 8 hours per day)
SELECT SUM(SalaryPerHour) * 8 * 30 AS Salary
FROM Worker WHERE LeftDate IS NULL;
