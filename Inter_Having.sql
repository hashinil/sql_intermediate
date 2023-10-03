-- Having

SELECT JobTitle, COUNT(JobTitle)
FROM EmployeeDemographics ED
JOIN EmployeeSalary ES
	ON ED.EmployeeID = ES.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle)>1;



SELECT JobTitle, AVG(Salary)
FROM EmployeeDemographics ED
JOIN EmployeeSalary ES
	ON ED.EmployeeID = ES.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary);