--graph worker mails
SELECT Email, Count(*) AS All_
FROM Worker
GROUP BY Email
ORDER BY All_;