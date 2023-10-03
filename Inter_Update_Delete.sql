SELECT * 
FROM EmployeeDemographics;

-- Update
UPDATE EmployeeDemographics
SET EmployeeID = 1012
WHERE FirstName = 'Holly' AND LastName = 'Flax';

UPDATE EmployeeDemographics
SET Age = 31, Gender = 'Female'
WHERE EmployeeID = 1012;

-- Delete
SELECT * 
FROM EmployeeDemographics
WHERE EmployeeID =1010;

DELETE 
FROM EmployeeDemographics
WHERE EmployeeID =1010;