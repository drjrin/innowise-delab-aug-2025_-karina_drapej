--Увеличить Salary всех сотрудников в отделе 'HR' на 10%.
UPDATE Employees
SET Salary = Salary * 1.10
WHERE Department = 'HR';

-- Обновить Department любого сотрудника с Salary выше 70000.00
на 'Senior IT'.
UPDATE Employees
SET Department = 'Senior IT'
WHERE Salary > 70000.00;

-- Удалить всех сотрудников, которые не назначены ни на один проект в
таблице EmployeeProjects.
DELETE FROM Employees
WHERE NOT EXISTS (
                  SELECT 1 
                  FROM EmployeeProjects 
                  WHERE EmployeeProjects.EmployeeID = Employees.EmployeeID
);

-- Вставить новый проект и назначить на него двух существующих
сотрудников с определенным количеством HoursWorked в
EmployeeProjects, и все это в одном блоке BEGIN/COMMIT.
BEGIN; 
INSERT INTO Projects (ProjectName, Budget, StartDate, EndDate)
VALUES ('Digital Security', 300000.00, '2023-11-01', '2024-11-01');
WITH new_project AS (
    SELECT ProjectID FROM Projects 
    WHERE ProjectName = 'Digital Security' 
    ORDER BY ProjectID DESC 
)
INSERT INTO EmployeeProjects (EmployeeID, ProjectID, HoursWorked)
VALUES 
    ((SELECT EmployeeID FROM Employees WHERE FirstName = 'Alice' AND LastName = 'Smith'), 
     (SELECT ProjectID FROM new_project), 40),
    
    ((SELECT EmployeeID FROM Employees WHERE FirstName = 'Bob' AND LastName = 'Johnson'), 
     (SELECT ProjectID FROM new_project), 60);
COMMIT;