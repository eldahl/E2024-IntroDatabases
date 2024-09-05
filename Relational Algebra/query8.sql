/*
Retrieve the average salary of all female employees
*/

USE Company;
GO;

SELECT AVG(E.Salary) FROM Employee E
WHERE Sex = 'F';