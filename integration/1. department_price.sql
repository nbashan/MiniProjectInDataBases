SELECT d.DepartmentId, d.Name, SUM(Price)
FROM Department d NATURAL JOIN ExhibitionAtDepartment 
     NATURAL JOIN Zaguri.ExhibitAtExhibition ee
     INNER JOIN Zaguri.Exhibit e ON e.ExhibitId = ee.ExhibitId
WHERE StartTime <= CURRENT_TIME AND CURRENT_TIME <= EndTime
GROUP BY d.DepartmentId, d.Name
