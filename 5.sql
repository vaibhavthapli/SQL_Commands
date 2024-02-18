/*---String Functions - 
TRIM , LTRIM, RTRIM, Replace, Substring, Upper, Lower

*/
drop table EmployeeErrors;
create table EmployeeErrors(
EmployeeID varchar(50),
FirstName varchar(50),
LastName varchar(50)
);

insert into EmployeeErrors values
('1001 ' , 'Jimbo', 'Halbert'),
(' 1002' , 'Pamela', 'Beasely'),
('1005', 'Toby', 'Flenderson - Fired');

select * from employeeerrors;
 
/*--Trim--
Using Trim,ltrim,rtim
*/

Select EmployeeID, trim(EmployeeID) as IDTRIM
FROM employeeerrors;

Select EmployeeID, rtrim(EmployeeID) as IDTRIM
FROM employeeerrors;

Select EmployeeID, ltrim(EmployeeID) as IDTRIM
FROM employeeerrors;

Select *, trim(EmployeeID) as IDTRIM
FROM employeeerrors;

/*--Using Replace--*/

select LastName, replace(LastName, '- Fired','') as LastNameFixed
from employeeerrors;

/*---Using Substring----*/

select substring(FirstName,1,3)/*--(column,index,upto)*/
from employeeerrors;

/*--Fuzi matching--*/
select err.FirstName, dem.FirstName,
substring(err.FirstName,1,3) , substring(dem.FirstName,1,3)
from employeeerrors err
join employeeDemographics dem
on substring(err.FirstName,1,3) = substring(dem.FirstName,1,3);

/*--Gender
--LastName
-AGE
--DOB*/


/*---upper, lower--*/
