CREATE OR REPLACE PROCEDURE Add_Transaction (
    p_Account_No IN NUMBER,
    p_Transaction_Type IN VARCHAR2,
    p_Amount IN NUMBER,
    p_Channel IN VARCHAR2,
    p_Status IN VARCHAR2,
    p_Reference_No IN VARCHAR2
)
AS
BEGIN
    INSERT INTO Transactions (
        Transaction_ID,
        Account_No,
        Transaction_Type,
        Amount,
        Transaction_Date,
        Channel,
        Status,
        Reference_No
    )
    VALUES (
        Transaction_Seq.NEXTVAL,
        p_Account_No,
        p_Transaction_Type,
        p_Amount,
        SYSDATE,
        p_Channel,
        p_Status,
        p_Reference_No
    );

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE Update_Account_Status (
    p_Account_No IN NUMBER,
    p_New_Status IN VARCHAR2
)
AS
BEGIN
    UPDATE Accounts
    SET Status = p_New_Status
    WHERE Account_No = p_Account_No;

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE Resolve_Alert (
    p_Alert_ID IN NUMBER
)
AS
BEGIN
    UPDATE Alerts
    SET Status = 'RESOLVED'
    WHERE Alert_ID = p_Alert_ID;

    COMMIT;
END;
/