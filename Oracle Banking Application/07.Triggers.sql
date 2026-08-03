-- Display all branches
SELECT * FROM Branches;

-- Display all customers
SELECT * FROM Customers;

-- Display all accounts
SELECT * FROM Accounts;

-- Display all transactions
SELECT * FROM Transactions;

-- Display all alerts
SELECT * FROM Alerts;

-- High value transactions
SELECT * FROM High_Value_Transactions;

-- Pending alerts
SELECT * FROM Pending_Alerts;

-- Total balance in all accounts
SELECT SUM(Balance) AS Total_Balance
FROM Accounts;

-- Total customers
SELECT COUNT(*) AS Total_Customers
FROM Customers;

-- Total transactions
SELECT COUNT(*) AS Total_Transactions
FROM Transactions;

-- Highest transaction
SELECT MAX(Amount) AS Highest_Transaction
FROM Transactions;

-- Average transaction amount
SELECT AVG(Amount) AS Average_Transaction
FROM Transactions;

-- Accounts with balance greater than 100000
SELECT *
FROM Accounts
WHERE Balance > 100000;

-- Failed transactions
SELECT *
FROM Transactions
WHERE Status = 'FAILED';

-- Transactions by type
SELECT Transaction_Type,
       COUNT(*) AS Total
FROM Transactions
GROUP BY Transaction_Type;

-- Customer account details
SELECT
    c.Customer_ID,
    c.First_Name,
    c.Last_Name,
    a.Account_No,
    a.Account_Type,
    a.Balance
FROM Customers c
JOIN Accounts a
ON c.Customer_ID = a.Customer_ID;