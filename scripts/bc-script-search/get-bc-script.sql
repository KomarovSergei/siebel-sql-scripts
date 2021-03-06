CREATE OR REPLACE FUNCTION GET_BUSCOMP_SCRIPT
    (ROWID_OF_LONG IN ROWID)
    RETURN VARCHAR2
IS
    LONG_TO_VARCHAR VARCHAR(32767);
BEGIN
    SELECT SCRIPT INTO LONG_TO_VARCHAR
    FROM S_BUSCOMP_SCRIPT
    WHERE ROW_ID = ROWID_OF_LONG;

    RETURN LONG_TO_VARCHAR;
EXCEPTION
    WHEN OTHERS THEN
        RETURN 'ERROR OCCURRED ON ROWID: '||ROWID_OF_LONG;
END;
