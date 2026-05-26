USE practice_db;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
	CustomerID INT,
    Gender VARCHAR(10),
    Age INT, 
    Annual_Income INT,
    Spending_Score INT
);

INSERT INTO customers VALUES
(1,'Male',19,15,39),
(2,'Male',21,15,81),
(3,'Female',20,16,6),
(4,'Female',23,16,77),
(5,'Female',31,17,40),
(6,'Female',22,17,76),
(7,'Female',35,18,6),
(8,'Female',23,18,94),
(9,'Male',64,19,3),
(10,'Female',30,19,72),
(11,'Male',67,20,14),
(12,'Female',35,20,99),
(13,'Female',58,20,15),
(14,'Female',24,20,77),
(15,'Male',37,20,13);

SELECT *
FROM customers;

SELECT COUNT(*) AS Total_Customers
FROM customers;

SELECT Gender, COUNT(*) AS Customer_Count
FROM customers
GROUP BY Gender;

SELECT Gender, AVG(Spending_Score) AS Avg_Spending
FROM customers
GROUP BY Gender;

SELECT Gender, AVG(Annual_Income) AS Avg_Income
FROM customers
GROUP BY Gender;

SELECT 
	CASE 
    WHEN Age < 25 THEN 'Under 25'
    WHEN Age BETWEEN 25 AND 40 THEN '25-40'
    ELSE '40+'
END AS Age_Group,
AVG(Spending_Score) AS Avg_Spending
FROM customers
GROUP BY Age_Group;

SELECT 
	CASE 
    WHEN Age < 25 THEN 'Under 25'
    WHEN Age BETWEEN 25 AND 40 THEN '25-40'
    ELSE '40+'
END AS Age_Group,
Gender,
AVG(Spending_Score) AS Avg_Spending
FROM customers
GROUP BY Gender, Age_Group;
    
