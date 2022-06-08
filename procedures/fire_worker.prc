CREATE OR REPLACE PROCEDURE FireWorker(workerId_ INT)
AS
BEGIN
    DELETE FROM Worker
    WHERE workerId = workerId_;
END;
