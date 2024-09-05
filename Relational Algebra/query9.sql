/*
Find the name and address of all Employee who work on at least one project
located in Houston but whose controlling department has no location in Houston.
- What's expensive in this query?
*/

USE Company;
GO;

SELECT DISTINCT E.FName, E.LName, E.Address FROM Employee E
JOIN Works_on Wo on E.SSN = Wo.Essn
JOIN Project P on Wo.Pno = P.PNumber
JOIN Department D on D.DNumber = E.Dno
JOIN Dept_Locations DL on D.DNumber = DL.DNUmber
WHERE P.PLocation = 'Houston'
    AND NOT DL.DLocation = 'Houston';