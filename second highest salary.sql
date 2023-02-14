select max(e.salary) as SecondHighestSalary 
from Employee as e
where e.salary != (
    select max(e.salary) from Employee e)


select distinct salary as SecondHighestSalary
from employee
order by Salary desc
limit 1 
offset 1