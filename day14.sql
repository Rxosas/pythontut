create database accesswayprimebank;
use accesswayprimebank;
select * from employeedata where DailyRate >=1000;
select distinct Department from employeedata;
select * from employeedata order by Jobrole;
select * from employeedata order by Jobrole desc;
select Monthlyincome, Jobrole from employeedata group by Jobrole;

select JobRole, Gender,  if(MonthlyIncome >=6000, 'True', 'False') as result from employeedata;
select JobRole, Gender, ifnull(Department, Education) as result from Employeedata;
select JobRole, Gender, nullif(Department, Education) as result from Employeedata;
select JobRole, Gender, Department,
case Department
when 'Sales' then 1
when 'Research $ Development' then 2
else 3 
end as DummyDepartment from Employeedata;