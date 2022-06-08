-- Find all working workers that works for a long time (30 years and above) and earns a low salary (below 100 per hour)
SELECT WorkerId, Name, SalaryPerHour, JoinDate, Email, BirthDate
FROM Worker WHERE LeftDate IS NULL
    AND (EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM JoinDate) >= 30)
    AND (SalaryPerHour < 100.0);
