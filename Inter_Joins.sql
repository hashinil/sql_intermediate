SELECT *
	FROM EmployeeDemographics;

SELECT *
	FROM EmployeeSalary;

Insert into EmployeeDemographics VALUES
	(1010, 'Anne', 'Mark', 34, 'Male'),
	(1011, 'Elio', 'Marcy', 36, 'Female');

Insert Into EmployeeSalary VALUES
	(1012, 'Analyst', 48000),
	(1013, 'Consultant', 66000);

-- Join / Inner Join
SELECT *
	FROM EmployeeDemographics ED
	Join EmployeeSalary ES
	ON ED.EmployeeID = ES.EmployeeID;

SELECT *
	FROM EmployeeDemographics ED
	Inner Join EmployeeSalary ES
	ON ED.EmployeeID = ES.EmployeeID;

-- Full outer Join
SELECT *
	FROM EmployeeDemographics ED
	Full outer Join EmployeeSalary ES
	ON ED.EmployeeID = ES.EmployeeID;

-- Left outer Join
SELECT *
	FROM EmployeeDemographics ED
	Left outer Join EmployeeSalary ES
	ON ED.EmployeeID = ES.EmployeeID;

-- Right outer Join
SELECT *
	FROM EmployeeDemographics ED
	Right outer Join EmployeeSalary ES
	ON ED.EmployeeID = ES.EmployeeID;


-- --------------------------------------------------
-- USECASES
SELECT *
	FROM EmployeeDemographics ED
	Inner Join EmployeeSalary ES
	ON ED.EmployeeID = ES.EmployeeID; 

-- Usecase 1
-- Micheal wants to know others salary 
SELECT ED.EmployeeID, FirstName,LastName, Salary
	FROM EmployeeDemographics ED
	Inner Join EmployeeSalary ES
	ON ED.EmployeeID = ES.EmployeeID
	WHERE FirstName <> 'Michael'
	ORDER BY Salary Desc;

-- Usecase 2
-- Average salary for salesman
SELECT JobTitle, AVG(Salary)
	FROM EmployeeDemographics ED
	Inner Join EmployeeSalary ES
	ON ED.EmployeeID = ES.EmployeeID
	WHERE JobTitle = 'Salesman'
	GROUP BY JobTitle;