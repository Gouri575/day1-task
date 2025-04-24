CREATE TABLE customers (
    CustomerID VARCHAR(20),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(30),
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50),
    ZipCode VARCHAR(10),
    AccountCL VARCHAR(20),
    LastActive VARCHAR(20),
    PlanName VARCHAR(20),
    MonthlyCharges DECIMAL(10, 2),
    TotalCharges DECIMAL(10, 2),
    ContractType VARCHAR(20),
    PaymentMethod VARCHAR(50),
    TenureMonths INT,
    DataUsage DECIMAL(10, 2),
    CallMinutes INT
);

INSERT INTO customers (
    CustomerID, FirstName, LastName, Email, PhoneNumber, Address,
    City, State, Country, ZipCode, AccountCL, LastActive, PlanName,
    MonthlyCharges, TotalCharges, ContractType, PaymentMethod,
    TenureMonths, DataUsage, CallMinutes
) VALUES (
    '8bd664c4', 'Gregory', 'Carlson', 'garciavicto@ex.com', '(703)921-5', 
    '71695 Green Mountains', 'Martinsville', 'Vermont', 'Malta', '3121',
    '##########', '##########', 'Unlimited', 34.26, 2819.64, 
    'One Year', 'Debit Card', 50, 80.07, 123
);

SELECT FirstName, LastName, Country, PlanName
FROM customers
WHERE Country = 'India';


SELECT * FROM customers
WHERE MonthlyCharges > (
    SELECT AVG(MonthlyCharges) FROM customers
);


SELECT PlanName, COUNT(*) AS TotalUsers, AVG(MonthlyCharges) AS AvgCharge
FROM customers
GROUP BY PlanName;


CREATE VIEW premium_users AS
SELECT FirstName, LastName, PlanName, MonthlyCharges
FROM customers
WHERE PlanName = 'Premium';


CREATE INDEX idx_country ON customers(Country);
