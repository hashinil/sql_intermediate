SELECT FirstName, LastName, Gender, Salary
FROM EmployeeDemographics demo  
JOIN EmployeeSalary sal 
	ON demo.EmployeeID = sal.EmployeeID;

SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics demo  
JOIN EmployeeSalary sal 
	ON demo.EmployeeID = sal.EmployeeID 
GROUP BY Gender;

SELECT FirstName, LastName, Gender, Salary,
	COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender
FROM EmployeeDemographics demo  
JOIN EmployeeSalary sal 
	ON demo.EmployeeID = sal.EmployeeID;