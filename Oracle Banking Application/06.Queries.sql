-- ==========================================
-- Oracle Banking Transaction Monitoring System
-- Queries.sql
-- ==========================================

-- 1. Display all branches
SELECT * FROM Branches;

-- 2. Display all customers
SELECT * FROM Customers;

-- 3. Display all accounts
SELECT * FROM Accounts;

-- 4. Display all transactions
SELECT * FROM Transactions;

-- 5. Display all alerts
SELECT * FROM Alerts;

-- 6. View high-value transactions
SELECT * FROM High_Value_Transactions;

-- 7. View pending alerts
SELECT * FROM Pending_Alerts;

-- 8. Show all failed transactions
SELECT *
FROM Transactions
WHERE Status = 'FAILED';

-- 9. Show accounts with balance greater than PKR 100,000
SELECT *
FROM Accounts
WHERE Balance > 100000;

-- 10. Total balance across all accounts
SELECT SUM(Balance) AS Total_Balance
FROM Accounts;

-- 11. Total number of customers
SELECT COUNT(*) AS Total_Customers
FROM Customers;

-- 12. Total number of transactions
SELECT COUNT(*) AS Total_Transactions
FROM Transactions;

-- 13. Highest transaction amount
SELECT MAX(Amount) AS Highest_Transaction
FROM Transactions;

-- 14. Average transaction amount
SELECT AVG(Amount) AS Average_Transaction
FROM Transactions;

-- 15. Number of transactions by type
SELECT
    Transaction_Type,
    COUNT(*) AS Total_Transactions
FROM Transactions
GROUP BY Transaction_Type;

-- 16. Customer account summary
SELECT
    c.Customer_ID,
    c.First_Name,
    c.Last_Name,
    a.Account_No,
    a.Account_Type,
    a.Balance
FROM Customers c
JOIN Accounts a
ON c.Customer_ID = a.Customer_ID
ORDER BY c.Customer_ID;

-- 17. Accounts with their branch names
SELECT
    c.First_Name,
    c.Last_Name,
    b.Branch_Name,
    a.Account_No,
    a.Balance
FROM Customers c
JOIN Branches b
ON c.Branch_ID = b.Branch_ID
JOIN Accounts a
ON c.Customer_ID = a.Customer_ID
ORDER BY b.Branch_Name;