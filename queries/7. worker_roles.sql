-- Show all roles with their workers and working workers
SELECT Role, Count(*) AS All_, Sum(IsWorking) AS Current_
FROM (SELECT Role, IsWorking(LeftDate) AS IsWorking FROM Worker)
GROUP BY Role
ORDER BY All_;
