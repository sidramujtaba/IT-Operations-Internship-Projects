-- ==========================================
-- Insert Data into Branches
-- ==========================================

INSERT INTO Branches VALUES (1, 'Main Branch', 'Karachi');
INSERT INTO Branches VALUES (2, 'Clifton Branch', 'Karachi');
INSERT INTO Branches VALUES (3, 'Lahore Branch', 'Lahore');
INSERT INTO Branches VALUES (4, 'Islamabad Branch', 'Islamabad');
INSERT INTO Branches VALUES (5, 'Peshawar Branch', 'Peshawar');

-- ==========================================
-- Insert Data into Customers
-- ==========================================

INSERT INTO Customers VALUES (101, '6110141661776', 'Ali', 'Khan', '03362220889', 'ali.khan@gmail.com', 'Malir, Karachi', 1, 'ACTIVE', SYSDATE);

INSERT INTO Customers VALUES (102, '6110986766895', 'Sidra', 'Khan', '08999456748', 'sidra.khan@gmail.com', 'Clifton, Karachi', 2, 'ACTIVE', SYSDATE);

INSERT INTO Customers VALUES (103, '6110167890056', 'Emilia', 'Max', '08996745678', 'emilia.max@gmail.com', 'DHA, Lahore', 3, 'ACTIVE', SYSDATE);

INSERT INTO Customers VALUES (104, '6899067243677', 'Haseeb', 'Mujtaba', '09677723467', 'haseeb.mujtaba@gmail.com', 'F-10, Islamabad', 4, 'ACTIVE', SYSDATE);

INSERT INTO Customers VALUES (105, '4556789025677', 'Nadia', 'Shaikh', '03352209985', 'nadia.khan@gmail.com', 'Main Town, Peshawar', 5, 'ACTIVE', SYSDATE);

-- ==========================================
-- Insert Data into Accounts
-- ==========================================

INSERT INTO Accounts VALUES (100001, 101, 'SAVINGS', 50000, SYSDATE, 'ACTIVE');

INSERT INTO Accounts VALUES (100002, 101, 'CURRENT', 150000, SYSDATE, 'ACTIVE');

INSERT INTO Accounts VALUES (100003, 102, 'SAVINGS', 80000, SYSDATE, 'ACTIVE');

INSERT INTO Accounts VALUES (100004, 103, 'CURRENT', 250000, SYSDATE, 'ACTIVE');

INSERT INTO Accounts VALUES (100005, 104, 'SAVINGS', 120000, SYSDATE, 'ACTIVE');

INSERT INTO Accounts VALUES (100006, 105, 'CURRENT', 45000, SYSDATE, 'ACTIVE');

-- ==========================================
-- Insert Data into Transactions
-- ==========================================

INSERT INTO Transactions VALUES
(1001,100001,'DEPOSIT',25000,SYSDATE,'BRANCH','SUCCESS','TXN1001');

INSERT INTO Transactions VALUES
(1002,100001,'WITHDRAWAL',5000,SYSDATE,'ATM','SUCCESS','TXN1002');

INSERT INTO Transactions VALUES
(1003,100002,'TRANSFER',70000,SYSDATE,'INTERNET','SUCCESS','TXN1003');

INSERT INTO Transactions VALUES
(1004,100003,'BILL_PAYMENT',3500,SYSDATE,'MOBILE','SUCCESS','TXN1004');

INSERT INTO Transactions VALUES
(1005,100004,'ATM',10000,SYSDATE,'ATM','FAILED','TXN1005');

INSERT INTO Transactions VALUES
(1006,100005,'POS',2500,SYSDATE,'POS','SUCCESS','TXN1006');

INSERT INTO Transactions VALUES
(1007,100006,'DEPOSIT',120000,SYSDATE,'BRANCH','SUCCESS','TXN1007');

-- ==========================================
-- Insert Data into Alerts
-- ==========================================

INSERT INTO Alerts VALUES
(1,1005,'Failed ATM Transaction','HIGH',SYSDATE,'PENDING',
'ATM withdrawal failed due to insufficient funds.');

INSERT INTO Alerts VALUES
(2,1003,'High Value Transfer','CRITICAL',SYSDATE,'PENDING',
'Transfer amount exceeds PKR 50,000.');

INSERT INTO Alerts VALUES
(3,1004,'Bill Payment Review','LOW',SYSDATE,'RESOLVED',
'Bill payment verified successfully.');

COMMIT;