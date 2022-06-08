-- Shows the distribution of salary between the workers (rounds to the closest ten)
SELECT (ROUND(SalaryPerHour) - MOD(ROUND(SalaryPerHour),10)) AS Salary, COUNT(*) AS Workers
FROM Worker
WHERE LeftDate IS NULL
GROUP BY (ROUND(SalaryPerHour) - MOD(ROUND(SalaryPerHour),10))
ORDER BY salary
