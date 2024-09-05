/*
Retreive the names of
    All employees who work on every project.
- How does this query scale with the number of projects?
- How can the query be made more efficient?
*/

USE Company;
GO;

SELECT FName, LName FROM Employee E
WHERE NOT EXISTS(
    SELECT P.PNumber FROM Project P
    WHERE NOT EXISTS(
        SELECT Wo.Pno FROM Works_on Wo
        WHERE Wo.Essn = E.SSN AND Wo.Pno = P.PNumber
    )
);
