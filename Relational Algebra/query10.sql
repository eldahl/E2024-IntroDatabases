/*
List the Lname of all Employee who have no dependents
*/

USE Company;
GO;

SELECT E.LName FROM Employee E
WHERE NOT E.SSN = ANY (SELECT D.Essn FROM Dependent D);