-- Number of managers per wing
SELECT wi.WingId, wi.Name, DepartmentId, d.Name, WorkerId, wo.Name, Email, JoinDate
FROM (Wing wi INNER JOIN Department d ON d.WingId = wi.WingId)
     NATURAL JOIN WorksAt NATURAL JOIN Worker wo
WHERE LeftDate IS NULL Role = 'Manager';
