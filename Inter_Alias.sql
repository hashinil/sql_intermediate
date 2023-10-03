SELECT * 
FROM EmployeeDemographics;

SELECT * 
FROM EmployeeSalary;

SELECT FirstName as Fname 
FROM EmployeeDemographics;

SELECT FirstName Fname 
FROM EmployeeDemographics;

SELECT AVG(Age) AvgAge
FROM EmployeeDemographics;

SELECT Age, COUNT(Age) person
FROM EmployeeDemographics 
GROUP BY Age
HAVING COUNT(Age) > 1
ORDER BY person

-- We cant use Alises in Having
-- Because SELECT query is evaluated, conceptually, in the following order:
-- The FROM clause
-- The WHERE clause
-- The GROUP BY clause
-- The HAVING clause
-- The SELECT clause
-- The ORDER BY clause

SELECT demo.EmployeeID, demo.FirstName, sal.Salary
FROM EmployeeDemographics demo 
LEFT JOIN EmployeeSalary sal
	ON demo.EmployeeID = sal.EmployeeID