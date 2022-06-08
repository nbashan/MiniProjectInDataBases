-- Show all roles with their workers and working workers
SELECT Role, Count(*) AS All_, Sum(IsWorking) AS Current_
FROM (SELECT Role, LeftDate IS NULL AS IsWorking FROM Worker)
GROUP BY Role
ORDER BY All_;
