SELECT Role, IsWorking, Count(*) as Num
FROM (SELECT Role, IsWorking(LeftDate) AS IsWorking FROM Worker)
GROUP BY Role, IsWorking
ORDER BY Num;
