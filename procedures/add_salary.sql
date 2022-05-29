CREATE OR REPLACE PROCEDURE AddSalary(workerId INT, amount FLOAT)
AS
BEGIN
    UPDATE Worker SET SalaryPerHour=SalaryPerHour + amount
    WHERE WorkerId = workerId
end;
