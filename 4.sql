/* Updating/Deleting 
*/
select *
from vaibhavdb.employeedemographics;

update vaibhavdb.employeedemographics
set EmployeeID = 1012
where firstName = 'Holly' and LastName = 'Flax';

update vaibhavdb.employeedemographics
set Age=31
where FirstName = 'Holly' and LastName = 'Flax';

update vaibhavdb.employeedemographics
set Gender = 'Female'
where EmployeeID = 1012;

/*--delete :Entire row */
delete from vaibhavdb.employeedemographics
where EmployeeID = 1013;

/*---Aliasing: Temporary changing the column name and table name */
select FirstName + LastName as FullName
from employeedemographics;

select concat(FirstName,' ',LastName) as FullName
from employeedemographics;

select avg(Age) as AvgAge
from vaibhavdb.employeedemographics;

 /*--- partition by---*/
 select FirstName, LastName, Gender, Salary,
 count(Gender) over(partition by Gender) as TotalGender
 from vaibhavdb.employeedemographics Demo
 join vaibhavdb.employeesalary Sal
 on Demo.EmployeeID = Sal.EmployeeID;
  
 /*--CTE's: Commom Table Expresion--*/
 /*--Temp Tables--*/
 create temporary table temp_Employee(
 EmployeeID int,
 JobTitle varchar(100),
 Salary int
 )
 select * from temp_Employee;
 insert into temp_Employee values(
 1001,'HR',45000);
 
 insert into temp_Employee
 select *
 from vaibhavdb.employeesalary;
 
 create table temp_employee2 (
 JobTitle varchar(50),
 EmployeePerJob int,
 AvgAge int,
 AvgSalary int);
 
 insert into temp_employee2
 select JobTitle, count(JobTitle), Avg(Age), Avg(salary)
 from vaibhavdb.employeedemographics emp
 join vaibhavdb.employeesalary sal
 on emp.EmployeeID = sal.EmployeeID
 group by JobTitle;
   
 select * from temp_employee2;

/*--drop
drop table if EXISTS table name
--*/

