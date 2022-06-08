-- Calculate the salary to pay for workers per an average month (20 days with 8 hours per day)
SELECT SUM(SalaryPerHour) * 8 * 20 AS Salary
FROM Worker WHERE LeftDate IS NULL;
