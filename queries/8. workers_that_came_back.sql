-- Workers that worked before, left and came back
SELECT w1.WorkerId, w1.Name, w1.Email, w1.SalaryPerHour, w1.JoinDate
FROM Worker w1 JOIN Worker w2
WHERE w1.LeftDate IS NULL AND w2.LeftDate IS NOT NULL AND w1.BirthDate = w2.BirthDate AND w1.Name = w2.Name ;
