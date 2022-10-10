-- find rows in employee where the salary is greater than average salary

use master

Select * from [dbo].[EMPLOYEE]
where Salary >
             (select avg(Salary) from EMPLOYEE
               )
