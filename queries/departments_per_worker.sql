-- Number of departments each worker works on
SELECT WorkerId, Name, COUNT(*) AS Departments
FROM WorksAt NATURAL JOIN Worker
GROUP BY WorkerId, Name;
