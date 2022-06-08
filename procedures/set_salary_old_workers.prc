CREATE OR REPLACE PROCEDURE SetSalaryToOldWorkers(yearsWorking INT, salaryPH FLOAT, salaryPHLessThan FLOAT, updatedRows OUT INT)
AS
BEGIN
    UPDATE Worker SET SalaryPerHour=salaryPH
    WHERE LeftDate IS NULL
        AND (EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM JoinDate) >= yearsWorking)
        AND (SalaryPerHour < salaryPHLessThan);
    updatedRows := SQL%ROWCOUNT;
END;
