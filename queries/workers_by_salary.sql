SELECT Count(*), (ROUND(SalaryPerHour) - MOD(ROUND(SalaryPerHour),10)) AS salary
FROM Worker
WHERE LeftDate IS NULL
GROUP BY (ROUND(SalaryPerHour) - MOD(ROUND(SalaryPerHour),10))
ORDER BY salary