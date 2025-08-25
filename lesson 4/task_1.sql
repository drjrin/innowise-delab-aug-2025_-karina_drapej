--Вставить двух новых сотрудников в таблицу Employees
INSERT INTO Employees (FirstName, LastName, Department, Salary)
VALUES ('John', 'Pork', 'HR', 67000.00), ('Muhammad', 'Tsumbul', 'Finance', '65000.00');
--Выбрать всех сотрудников из таблицы Employees.
SELECT employeeid, firstname, lastname
FROM employees;
Выбрать только FirstName и LastName сотрудников из отдела 'IT'
SELECT firstname, lastname
FROM employees
WHERE department = 'IT';
--Обновить Salary 'Alice Smith' до 65000.00.
UPDATE employees
SET salary = '65000.00'
WHERE employeeid = 1;
--Удалить сотрудника, чья LastName — 'Prince'.
ALTER TABLE employeeprojects
DROP CONSTRAINT employeeprojects_employeeid_fkey; 
ALTER TABLE employeeprojects
ADD CONSTRAINTS employeeprojects_employeeid_fkey 
FOREIGN KEY (EmployeeID) --Вроде понимаю что надо, но все равно вникнуть до конца не могу.Получается сначала полностью удаляем fk, к которому было привязано старое условие без каскадного удаления. ПОТОМ создаем этот жк fk заново? То же самое, но с новым условием, допускающим каскадное удаление? Вот это FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID) полностью та же команда, как и при изначальном создании таблицы?
REFERENCES Employees(EmployeeID) 
ON DELETE CASCADE;
DELETE FROM employees
WHERE lastname = 'Prince';
SELECT * FROM employees;
