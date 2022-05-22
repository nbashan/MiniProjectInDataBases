SELECT Count(*), (ROUND(SalaryPerHour) - MOD(ROUND(SalaryPerHour),10)) as salary
FROM Worker
WHERE IsWorking(LeftDate)
GROUP BY salary