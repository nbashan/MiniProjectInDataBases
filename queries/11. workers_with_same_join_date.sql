-- Workers that joined the same day
SELECT w1.WorkerId, w1.Name, w1.JoinDate, w1.Email, w2.WorkerId, w2.Name, w2.JoinDate, w2.Email
FROM Worker w1 JOIN Worker w2
ON TO_CHAR(w1.JoinDate, 'MM-dd') = TO_CHAR(w2.JoinDate, 'MM-dd')
