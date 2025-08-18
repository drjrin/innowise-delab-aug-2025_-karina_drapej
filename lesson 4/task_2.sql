--Создать новую таблицу с именем Departments:
CREATE TABLE Departments (
DepartmentID SERIAL PRIMARY KEY,
DepartmentName VARCHAR(50) UNIQUE NOT NULL, 
Location VARCHAR(50)
);
--Изменить таблицу Employees, добавив новый столбец с именем
Email VARCHAR(100):
ALTER TABLE Employees ADD COLUMN Email VARCHAR(100);
--Добавить ограничение UNIQUE к столбцу Email в таблице
Employees, предварительно заполнив любыми значениями:
UPDATE Employees 
SET Email = 'aSmith@gmail.com'
WHERE EmployeeID = 1;
UPDATE Employees 
SET Email = 'itjohnson@gmail.com'
WHERE EmployeeID = 2;
UPDATE Employees 
SET Email = 'brown86@gmail.com'
WHERE EmployeeID = 3;
UPDATE Employees 
SET Email = 'evedavis@gmail.com'
WHERE EmployeeID = 5;
UPDATE Employees 
SET Email = 'john.p@gmail.com'
WHERE EmployeeID = 6;
UPDATE Employees 
SET Email = 'muhmmad_t_1977@gmail.com'
WHERE EmployeeID = 7;
--Переименовать столбец Location в таблице Departments в
OfficeLocation:
ALTER TABLE Employees ADD CONSTRAINT UQ_Email UNIQUE (Email);
ALTER TABLE Departments RENAME COLUMN Location TO OfficeLocation;
