/*
Write a query that returns the names of
    All employees that work in department 5 and work more than 10 hours per week on the ProductX project.
- Any alternative ways of doing the query?
- What's expensive in this query?
- Can you make it more efficient?
*/


USE Company;
GO;

-- Initial solution
SELECT FName, Minit, LName FROM Employee JOIN dbo.Department D ON D.DNumber = Employee.Dno
         WHERE D.DNumber = 5
           AND (SELECT Hours FROM Works_on JOIN Project P ON
               Works_on.Pno = P.PNumber AND Employee.SSN = Works_on.Essn WHERE P.PName = 'ProductX') > 10;

-- Better solution
SELECT FName, Minit, LName FROM Employee E
JOIN Department D ON E.Dno = D.DNumber
JOIN Works_on W ON W.Essn = E.SSN
JOIN Project P ON P.PNumber = W.Pno
WHERE D.DNumber = 5
AND P.PName = 'ProductX'
AND W.Hours > 10;

-- By aggregating the same operations together, the query is able to be optimized by the database engine.
-- The JOIN operations create a composite table, and the conditional WHERE clauses are then applied as a filter.
-- This is better than doing subqueries within WHERE conditionals as is the case in the Initial solution