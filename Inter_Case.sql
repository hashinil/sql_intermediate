SELECT *
	FROM EmployeeDemographics;

-- Case statement

SELECT EmployeeID, LastName, Age,
	CASE
		WHEN Age > 35 THEN 'Old'
		WHEN Age > 30 AND Age <= 35 THEN 'Young'
		ELSE 'Teen'
	END
	FROM EmployeeDemographics
	WHERE Age is NOT NULL
	ORDER BY Age;

-- Use Case: Calculate Salary Hike
SELECT ED.EmployeeID, LastName, Salary,
	CASE
		WHEN JobTitle = 'Salesman' THEN Salary+(Salary*.10)
		WHEN JobTitle = 'Accountant' THEN Salary+(Salary*.05)
		WHEN JobTitle = 'HR' THEN Salary+(Salary*.01)
		ELSE Salary+(Salary*.02)
	END AS NewSalary
FROM EmployeeDemographics ED
	JOIN EmployeeSalary ES
	ON ED.EmployeeID = ES.EmployeeID;