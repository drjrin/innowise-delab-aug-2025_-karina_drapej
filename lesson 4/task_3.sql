--Создать нового пользователя PostgreSQL (роль) с именем hr_user и
простым паролем.
CREATE ROLE hr_user WITH PASSWORD 'password';
--Предоставить hr_user право SELECT на таблицу Employees.
GRANT SELECT ON TABLE employees TO hr_user;
--Тест: В новой сессии подключиться как hr_user и попытаться
выполнить SELECT * FROM Employees;
\c practice_db hr_user;
SELECT * FROM Employees;
--Как hr_user, попытаться выполнить INSERT нового сотрудника в
Employees. (Должно завершиться неудачей).
INSERT INTO Employees (firstName) VALUES ('Alex');
--Как пользователь-администратор, предоставить hr_user права
INSERT и UPDATE на таблицу Employees.
\c practice_db postgress;
GRANT INSERT, UPDATE ON TABLE employees TO hr_user;
GRANT USAGE, SELECT ON SEQUENCE employees_employeeid_seq TO hr_user;
--Тест: Как hr_user, попробовать выполнить INSERT и UPDATE
сотрудника. (Теперь должно сработать).
INSERT INTO Employees (firstname, lastname) VALUES ('Alex', 'Johnson'); 
UPDATE Employees SET firstname = 'Kyle' WHERE EmployeeID = 8;