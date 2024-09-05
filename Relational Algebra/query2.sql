/*
List
    All employees that have a dependent with the same first name as themselves.
- What's expensive in this query?
- Can you make it more efficient?
- Does this have any real world applications?
*/

USE Company;
GO;

SELECT * FROM Employee
    JOIN Dependent D ON Employee.SSN = D.Essn
         WHERE FName = D.Dependent_Name;
