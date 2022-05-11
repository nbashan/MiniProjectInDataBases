CREATE VIEW v_Working_guards_paid_under_50_nis
AS
SELECT WorkerId, Name, Role, SalaryPerHour, Email, JoinDate, BirthDate
FROM Worker WHERE LeftDate IS NULL AND Role == 'Guard' and SalaryPerHour <= 50;
