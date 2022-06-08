-- Workers that joined the same day
SELECT w1.WorkerId, w1.Name, w1.Email, w1.JoinDate, w1.LeftDate
FROM Worker w1 JOIN Worker w2
ON w1.JoinDate = w2.JoinDate AND EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM w1.JoinDate) >= 5
GROUP BY w1.WorkerId, w1.Name, w1.Email. w1.JoinDate, w1.LeftDate;
