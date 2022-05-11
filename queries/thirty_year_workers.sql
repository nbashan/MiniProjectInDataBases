SELECT *
FROM Worker
where LeftDate is NULL and YEAR(CURDATE()) - YEAR(JoinDate) >= 30