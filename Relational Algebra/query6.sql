/*
Retreive the names of
    All employees who do not work on any project.
- Is your query optimal?
- How does this query scale with the number of projects?
*/

USE Company;
GO;

SELECT * FROM Employee E
WHERE NOT E.SSN = ANY (
    SELECT Wo.Essn FROM Works_on Wo
    WHERE Wo.Essn = E.SSN
);