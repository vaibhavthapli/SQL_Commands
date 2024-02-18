/*----intermediate----*/

/*----joins-----
Joins: join a way to combine multiple tables into a  single outcome.
with common column
*/
/*
Inner joins, Full/Lest/Right Outer Joins

Inner join: Common in both table

*/
select * from vaibhavdb.employeedemographics
inner join vaibhavdb.employeesalary
on employeedemographics.EmployeeID = employeesalary.EmployeeID;

/*----full outer join----*/
select * from vaibhavdb.employeedemographics
left join vaibhavdb.employeesalary
on employeedemographics.EmployeeID = employeesalary.EmployeeID
union
select * from vaibhavdb.employeedemographics
right join vaibhavdb.employeesalary
on employeedemographics.EmployeeID = employeesalary.EmployeeID;

/*---Left outer join---*/
select * from vaibhavdb.employeedemographics
left outer join vaibhavdb.employeesalary
on employeedemographics.EmployeeID = employeesalary.EmployeeID;

/*---right outer join---*/
select * from vaibhavdb.employeedemographics
right outer join vaibhavdb.employeesalary
on employeedemographics.EmployeeID = employeesalary.EmployeeID;

select employeedemographics.EmployeeID, FirstName, LastName,Age,Gender,JobTitle, Salary
from vaibhavdb.employeedemographics
inner join vaibhavdb.employeesalary
on employeedemographics.EmployeeID = employeesalary.EmployeeID;

/*--Ambiguous error: means same column in 2 tables--*/

select employeedemographics.EmployeeID, FirstName, LastName,Age,Gender,JobTitle, Salary
from vaibhavdb.employeedemographics
right outer join vaibhavdb.employeesalary
on employeedemographics.EmployeeID = employeesalary.EmployeeID;

select *from vaibhavdb.employeedemographics
left join vaibhavdb.employeesalary
on employeedemographics.EmployeeID = employeesalary.EmployeeID
union
select * from vaibhavdb.employeedemographics
right join vaibhavdb.employeesalary
on employeedemographics.EmployeeID = employeesalary.EmployeeID;

select employeedemographics.EmployeeID, FirstName, LastName, Age, Salary
from vaibhavdb.employeedemographics
inner join vaibhavdb.employeesalary
on employeedemographics.EmployeeID = employeesalary.EmployeeID
where FirstName <> 'Michael'
order by Salary desc;

select JobTitle , avg(Salary)
from vaibhavdb.employeedemographics
inner join vaibhavdb.employeesalary
on employeedemographics.EmployeeID = employeesalary.EmployeeID
where JobTitle = 'Salesman';


/*------Union-----
Union: select all the data in both table and put it into one output
*/
/* this command only works on same number of columns in both table.*/
Select * from vaibhavdb.employeedemographics
union
select * from vaibhavdb.employeesalary;

Select * from vaibhavdb.employeedemographics
union all
select * from vaibhavdb.employeesalary;


/*--combine differnet table*/
select EmployeeID, FirstName, Age
from vaibhavdb.employeedemographics
union
select EmployeeID, JobTitle,Salary
from vaibhavdb.employeesalary
order by EmployeeID;