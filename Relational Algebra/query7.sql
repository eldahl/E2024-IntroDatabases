/*
For each department
    Retrieve the department name and the average salary of all employees working in that department.
- How expensive is calculating the average salary?
- How does this query scale with the number of employees?
- How does this query scale with the number of departments?
*/

USE Company;
GO;

SELECT D.DName, AVG(E.Salary) FROM Employee E
JOIN Department D on E.Dno = D.DNumber
GROUP BY D.DName;
