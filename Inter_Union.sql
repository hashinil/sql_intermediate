-- insert 

Insert into EmployeeDemographics VALUES
(1015, 'Ryan', 'Howard', 26, 'Male'),
(NULL, 'Holly', 'Flax', NULL, NULL),
(1017, 'Darryl', 'Philbin', NULL, 'Male');

-- Create: WareHouseEmployeeDemographics
Create Table WareHouseEmployeeDemographics (
	EmployeeID int, 
	FirstName varchar(50), 
	LastName varchar(50), 
	Age int, 
	Gender varchar(50)
);

-- Insert: WareHouseEmployeeDemographics
Insert into WareHouseEmployeeDemographics VALUES
	(1017, 'Darryl', 'Philbin', NULL, 'Male'),
	(1050, 'Roy', 'Anderson', 31, 'Male'),
	(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
	(1052, 'Val', 'Johnson', 31, 'Female');

-- -----------------------------------------------------------------------
SELECT *
	FROM EmployeeDemographics;

SELECT *
	FROM WareHouseEmployeeDemographics;

SELECT *
	FROM EmployeeDemographics ED
	Full outer Join WareHouseEmployeeDemographics EW
	ON ED.EmployeeID = EW.EmployeeID;

-- union
SELECT * 
	FROM EmployeeDemographics ED
	UNION
SELECT * 
	FROM WareHouseEmployeeDemographics EW

-- union ALL
SELECT * 
	FROM EmployeeDemographics ED
	UNION ALL
SELECT * 
	FROM WareHouseEmployeeDemographics EW
	ORDER BY EmployeeID