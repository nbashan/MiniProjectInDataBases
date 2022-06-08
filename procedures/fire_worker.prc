CREATE OR REPLACE PROCEDURE FireWorker(workerId_ INT)
AS
BEGIN
    UPDATE Worker SET LeftDate = CURRENT_DATE
    WHERE workerId = workerId_ AND LeftDate IS NULL;
END;
