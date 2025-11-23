use Company_SD

------1-------
select dnum , dname , ssn , fname + ' ' + lname as manager_name
from Departments 
join employee on departments.mgrssn = employee.ssn

------2-------
select dname , pname 
from departments
join project on departments.dnum = project.dnum

------3-------
select fname + ' ' + lname as employee_name , dependent_name , dependent.sex , dependent.bdate 
from employee 
join dependent on employee.ssn = dependent.essn

------4-------
select pnumber , pname , plocation
from project
where project.City = 'cairo' or project.City = 'alex'

------5-------
select * 
from project
where pname like 'a%'

------6-------
select ssn , fname ,lname , salary , dno
from employee
where dno = 30 and salary between 1000 and 2000

------7-------
select fname , lname
from employee 
join Works_for on employee.ssn = Works_for.essn
join project on Works_for.pno = project.pnumber
where employee.dno = 10 and project.pname = 'al rabwah' and Works_for.hours >= 10

------8-------
select x.fname , x.lname
from employee x
join employee as y on x.superssn = y.ssn
where y.fname = 'kamel' and y.lname = 'mohamed'

------9-------
select fname + ' ' + lname as employee_name , pname as project_name
from employee 
join Works_for on employee.ssn = Works_for.essn
join project on Works_for.pno = project.pnumber
order by project.pname

------10-------
select pnumber , dname , lname as manager_lname , address , employee.bdate
from project 
join departments on project.dnum = departments.dnum
join employee on departments.mgrssn = employee.ssn
where project.City = 'cairo'

------11-------
select *
from employee
where ssn in (select departments.mgrssn from departments)

------12-------
select fname + ' ' + lname as employee_name , dependent_name , Dependent.Bdate , Dependent.Sex , ESSN
from employee 
left join dependent on employee.ssn = dependent.essn

------13-------
insert into employee (fname , lname , ssn , bdate , address , sex , salary , superssn , dno)
values ('mohanad' , 'ali' , '102672' , '2000-04-15' , 'nasr city, cairo' , 'm' , 3000 , '112233' , 30)

------14-------
insert into employee (fname , lname , ssn , bdate , address , sex , dno)
values ('omar' , 'hassan' , '102660' , '2001-07-20' , 'giza, egypt' , 'm' , 30)

------15-------
update employee
set salary = salary * 1.2
where ssn = '102672'
