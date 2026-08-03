CREATE TABLE Branches (
    Branch_ID NUMBER PRIMARY KEY,
    Branch_Name VARCHAR2(100) NOT NULL,
    City VARCHAR2(50) NOT NULL
);

CREATE TABLE Customers (
    Customer_ID NUMBER PRIMARY KEY,
    CNIC VARCHAR2(15) UNIQUE NOT NULL,
    First_Name VARCHAR2(50) NOT NULL,
    Last_Name VARCHAR2(50) NOT NULL,
    Phone VARCHAR2(15) UNIQUE NOT NULL,
    Email VARCHAR2(100) UNIQUE,
    Address VARCHAR2(200),
    Branch_ID NUMBER NOT NULL,
    Status VARCHAR2(10) DEFAULT 'ACTIVE'
        CHECK (Status IN ('ACTIVE', 'INACTIVE')),
    Created_Date DATE DEFAULT SYSDATE,

    CONSTRAINT FK_Customer_Branch
        FOREIGN KEY (Branch_ID)
        REFERENCES Branches(Branch_ID)
);

CREATE TABLE Accounts (
    Account_No NUMBER PRIMARY KEY,
    Customer_ID NUMBER NOT NULL,
    Account_Type VARCHAR2(20)
        CHECK (Account_Type IN ('SAVINGS', 'CURRENT')),
    Balance NUMBER(15,2) DEFAULT 0 NOT NULL,
    Open_Date DATE DEFAULT SYSDATE,
    Status VARCHAR2(10) DEFAULT 'ACTIVE'
        CHECK (Status IN ('ACTIVE', 'INACTIVE', 'FROZEN')),

    CONSTRAINT FK_Account_Customer
        FOREIGN KEY (Customer_ID)
        REFERENCES Customers(Customer_ID)
);

CREATE TABLE Transactions (
    Transaction_ID NUMBER PRIMARY KEY,
    Account_No NUMBER NOT NULL,
    Transaction_Type VARCHAR2(20)
        CHECK (Transaction_Type IN ('DEPOSIT','WITHDRAWAL','TRANSFER','BILL_PAYMENT','ATM','POS')),
    Amount NUMBER(15,2) NOT NULL
        CHECK (Amount > 0),
    Transaction_Date DATE DEFAULT SYSDATE,
    Channel VARCHAR2(20)
        CHECK (Channel IN ('ATM','MOBILE','INTERNET','BRANCH','POS')),
    Status VARCHAR2(15) DEFAULT 'SUCCESS'
        CHECK (Status IN ('SUCCESS','FAILED','PENDING')),
    Reference_No VARCHAR2(30) UNIQUE,

    CONSTRAINT FK_Transaction_Account
        FOREIGN KEY (Account_No)
        REFERENCES Accounts(Account_No)
);

CREATE TABLE Alerts (
    Alert_ID NUMBER PRIMARY KEY,
    Transaction_ID NUMBER NOT NULL,
    Alert_Type VARCHAR2(50) NOT NULL,
    Severity VARCHAR2(10)
        CHECK (Severity IN ('LOW','MEDIUM','HIGH','CRITICAL')),
    Alert_Date DATE DEFAULT SYSDATE,
    Status VARCHAR2(15) DEFAULT 'PENDING'
        CHECK (Status IN ('PENDING','RESOLVED','IGNORED')),
    Description VARCHAR2(200),

    CONSTRAINT FK_Alert_Transaction
        FOREIGN KEY (Transaction_ID)
        REFERENCES Transactions(Transaction_ID)
);