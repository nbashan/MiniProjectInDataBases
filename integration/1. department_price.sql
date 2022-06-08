-- Select all departments and their price of current exhibitions
SELECT d.DepartmentId, d.Name, SUM(Price)
FROM Department d 
     INNER JOIN Soria.ExhibitionAtDepartment ead ON d.DepartmentId = ead.Department_Id
     NATURAL JOIN Soria.Exhibition
     NATURAL JOIN Soria.ExhibitAtExhibition ee
     INNER JOIN Soria.Exhibit e ON e.ExhibitId = ee.ExhibitId
WHERE StartTime <= CURRENT_DATE AND CURRENT_DATE <= EndTime
GROUP BY d.DepartmentId, d.Name
