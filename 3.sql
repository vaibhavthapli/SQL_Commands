/*---case statements---*/
select FirstName,LastName, Age
from vaibhavdb.employeedemographics
where Age is not NULL
order by Age;

select FirstName, LastName,Age,
CASE
	when Age > 30 then 'Old'
    else 'Young'
END
from vaibhavdb.employeedemographics
where Age is not NULL
order by Age;

select FirstName, LastName,Age,
CASE
	when Age = 38 then 'Stanley'
	when Age >30 then 'Old'
    else 'Young'
END
from vaibhavdb.employeedemographics
where Age is not NULL
order by Age;

select FirstName , LastName, JobTitle, Salary
from vaibhavdb.employeedemographics
join vaibhavdb.employeesalary
on employeedemographics.EmployeeID = employeesalary.EmployeeID;

/*--- what the new salary after the raise in salary*/
select FirstName , LastName, JobTitle, Salary,
case
	when JobTitle = 'Salesman' then Salary + (Salary * .10)
    when JobTitle = 'Accountant' then Salary + (Salary * .05)
    when JobTitle = 'HR' then Salary + (Salary * .00001)
    else Salary + (Salary * .03)
end as SalaryAfterRaise
from vaibhavdb.employeedemographics
join vaibhavdb.employeesalary
on employeedemographics.EmployeeID = employeesalary.EmployeeID;

/*---Having Clause-----*/
select JobTitle, count(JobTitle)
from vaibhavdb.employeedemographics
join vaibhavdb.employeesalary
on employeedemographics.EmployeeID = employeesalary.EmployeeID
group by JobTitle;

select JobTitle, count(JobTitle)
from vaibhavdb.employeedemographics
join vaibhavdb.employeesalary
on employeedemographics.EmployeeID = employeesalary.EmployeeID
group by JobTitle
having count(JobTitle) >1;

select JobTitle, avg(Salary)
from vaibhavdb.employeedemographics
join vaibhavdb.employeesalary
on employeedemographics.EmployeeID = employeesalary.EmployeeID
group by JobTitle 
having avg(Salary) >45000
order by avg(Salary);

