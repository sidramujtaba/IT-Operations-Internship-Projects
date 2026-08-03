CREATE VIEW High_Value_Transactions AS
SELECT
    Transaction_ID,
    Account_No,
    Transaction_Type,
    Amount,
    Transaction_Date,
    Status
FROM Transactions
WHERE Amount > 50000;

CREATE VIEW Pending_Alerts AS
SELECT
    Alert_ID,
    Transaction_ID,
    Alert_Type,
    Severity,
    Alert_Date
FROM Alerts
WHERE Status = 'PENDING';