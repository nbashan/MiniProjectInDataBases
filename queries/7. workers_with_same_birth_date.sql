-- Workers with the same birth date
SELECT w1.WorkerId, w1.Name, w1.Email, w1.BirthDate, w1.JoinDate, w1.LeftDate
FROM Worker w1 JOIN Worker w2
ON TO_CHAR(w1.Birth, 'MM-dd') = TO_CHAR(w2.Birth, 'MM-dd')
GROUP BY w1.WorkerId, w1.Name, w1.Email, w1.BirthDate, w1.JoinDate, w1.LeftDate
ORDER BY TO_CHAR(w1.Birth, 'MM-dd');
