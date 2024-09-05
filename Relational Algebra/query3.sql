/*
Find
    All employees that are directly supervised by Franklin Wong.
- What changes if we want to find all employees that are supervised by `Franklin Wong` (directly or indirectly)?
- What relations change if we change `Franklin Wong` to e.g. `Jane Doe`?
- The same change above, but in a NoSQL database?
*/

USE Company;
GO;

SELECT * FROM Employee E
         WHERE EXISTS (
                SELECT SV.FName, SV.LName FROM Employee SV
                        WHERE SV.SSN = E.SuperSSN
                          AND SV.FName = 'Franklin'
                          AND SV.LName = 'Wong');
