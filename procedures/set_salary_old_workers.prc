CREATE OR REPLACE PROCEDURE SetSalaryToOldWorkers(yearsWorking INT, salaryPH FLOAT, salaryPHLessThan FLOAT)
AS
BEGIN
    UPDATE Worker SET SalaryPerHour=salaryPH
    WHERE LeftDate IS NULL
        AND (EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM JoinDate) >= yearsWorking)
        AND (SalaryPerHour < salaryPHLessThan);
END;
