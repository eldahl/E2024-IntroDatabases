/*
For each project, list
    The project name and the total hours per week (by all employees) spent on that project.
- What's expensive in this query?
- Can you make it more efficient?
*/

USE Company;
GO;

SELECT P.PName, SUM(Wo.Hours) FROM Works_on Wo
JOIN Project P ON Wo.Pno = P.PNumber
GROUP BY P.PName;