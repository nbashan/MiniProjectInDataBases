CREATE OR REPLACE PROCEDURE AddSalary(workerId_ INT, amount FLOAT)
AS
BEGIN
    UPDATE Worker SET SalaryPerHour=SalaryPerHour + amount
    WHERE WorkerId = workerId_;
END;
