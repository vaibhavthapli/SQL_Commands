use vaibhavdb;
select * from employeedemographics;
select * from employeesalary;

/*----select-----*/
select * 
from employeedemographics limit 5;

select distinct(Gender)
from employeedemographics;

select count(LastName)
from employeedemographics;

select * from employeesalary;

select MAX(Salary)
from employeesalary;

select MIN(Salary)
from employeesalary;

select avg(Salary)
from employeesalary;

select *
from vaibhavdb.employeedemographics;

/*----Where----*/
select * from vaibhavdb.employeedemographics where FirstName='Jim';
/*-----Where----<>(not)----*/
select * from vaibhavdb.employeedemographics
where FirstName <> 'Jim';

select * from vaibhavdb.employeedemographics
where Age >= 30;

select * from vaibhavdb.employeedemographics
where Age < 32;

select * from vaibhavdb.employeedemographics
where Age <= 32 AND Gender = "Male";

/*----LIKE(wildcard)----*/
select * from vaibhavdb.employeedemographics
where LastName LIKE 'S%'; /*--start with S----*/

select * from vaibhavdb.employeedemographics
where LastName like '%n'; /*----end with n----*/

select * from vaibhavdb.employeedemographics
where LastName like '%S%'; /*----anywhere in name--*/

select * from vaibhavdb.employeedemographics
where LastName like 'S%o%';

/*------NULL, NOT NULL-----*/
select * from vaibhavdb.employeedemographics
where FirstName is NULL;

select * from vaibhavdb.employeedemographics
where FirstName is NOT NULL;

select * from vaibhavdb.employeedemographics
where Age is NULL;

/*-----IN----*/
select * from vaibhavdb.employeedemographics
where FirstName IN ('Jim' , 'Michael');

/*---- GroupBY , Orderby-----*/
  
select Gender, count(Gender)
from vaibhavdb.employeedemographics
group by Gender;

select Gender, Age , count(Gender)
from vaibhavdb.employeedemographics
group by Gender, Age;

select Gender, Age , count(Gender)
from vaibhavdb.employeedemographics
where Age > 31
group by Gender, Age;

select * from vaibhavdb.employeedemographics
order by Age;

select * from vaibhavdb.employeedemographics
order by Age , Gender;

