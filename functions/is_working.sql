CREATE OR REPLACE FUNCTION IsWorking(leftDate DATE)
RETURN INT
AS
BEGIN
    IF  leftDate IS NULL THEN
        RETURN 1;
    ELSE
        RETURN 0;
    END IF;
END;
