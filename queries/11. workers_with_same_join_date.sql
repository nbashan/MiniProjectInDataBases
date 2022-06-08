-- Workers that joined the same day
SELECT w1.WorkerId, w1.Name, w1.JoinDate, w1.Email
FROM Worker w1 JOIN Worker w2
ON w1.JoinDate = w2.JoinDate AND EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM w1.JoinDate) >= 5;