
SELECT * FROM Department

SELECT * FROM Wing

SELECT * FROM Worker

-- All workers that currently working
SELECT * FROM Worker WHERE LeftDate is NULL

-- Number of workers per department
SELECT DepartmentId, COUNT(*)
FROM Worker NATURAL JOIN WorksAt NATURAL JOIN Department
GROUPBY DepartmentId

-- Number of workers per wing
SELECT WingId, COUNT(*)
FROM Worker NATURAL JOIN WorksAt NATURAL JOIN Department NATURAL JOIN Wing
GROUPBY WingId

-- All departments without workers
SELECT * FROM Department d
WHERE d.DepartmentId NOT IN
(SELECT DepartmentId FROM WorksAt NATURAL JOIN Department)
