SELECT WorkerId, Name, Email, LeftDate
FROM Worker NATURAL JOIN WorksAt
WHERE DepartmentId IN (
    SELECT DepartmentId FROM Worker NATURAL JOIN WorksAt
    WHERE Name = 'Jessica Mcmahon'
)
