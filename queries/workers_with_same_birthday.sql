-- Workers that have the birthday in the same day
SELECT w1.WorkerId, w1.Name, w1.BirthDate, w2.WorkerId, w2.Name, w2.BirthDate
FROM Worker w1 JOIN Worker w2
ON TO_CHAR(w1.BirthDate, 'MM-dd') = TO_CHAR(w2.BirthDate, 'MM-dd')
