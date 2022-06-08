-- Number of departments each working worker works on
SELECT WorkerId, Name, JoinDate, Email, COUNT(*) AS Departments
FROM WorksAt NATURAL JOIN Worker
WHERE LeftDate IS NULL
GROUP BY WorkerId, Name;
