/*-- Stored Procedures: Stored Procedures is a group of sql statements that
can be created and then stored in a Database.
2:2:0*/
use vaibhavdb;

DELIMITER //

CREATE PROCEDURE TEST()
BEGIN
    SELECT *
    FROM employeedemographics;
END //

DELIMITER ;
/* use procedure*/
call TEST();

/*--*/
DELIMITER //
create procedure Temp_Employee()
begin
	create temporary table temp_employ(
    JobTitle varchar(100),
    EmployeesPerJob int,
    AvgAge int,
    AvgSalary int
    );

insert into temp_employ
select JobTitle, count(JobTitle), Avg(Age), Avg(Salary)
from vaibhavdb.employeedemographics emp
join vaibhavdb.employeesalary sal
on emp.EmployeeID = sal.EmployeeID
group by JobTitle;
end //
DELIMITER ;

call Temp_Employee();

select * from temp_employ;
select * from temp_employ
where JobTitle='Salesman';

