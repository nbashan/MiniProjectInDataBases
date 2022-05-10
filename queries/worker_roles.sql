-- Show all roles with their workers and working workers
SELECT Role, Count(*) as All_, Sum(IsWorking) as Num
FROM (SELECT Role, IsWorking(LeftDate) AS IsWorking FROM Worker)
GROUP BY Role
ORDER BY All_;
