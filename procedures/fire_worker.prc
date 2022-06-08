CREATE OR REPLACE PROCEDURE FireWorker(workerId_ INT)
AS
BEGIN
    IF leftDate IS NULL THEN
        UPDATE Worker SET LeftDate = CURRENT_DATE
        WHERE workerId = workerId_;
    END IF;
END;
