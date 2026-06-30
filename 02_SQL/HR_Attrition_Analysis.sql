--HR ATTRITION ANALYSIS PROJECT

--Database creation
create database HR_attrition_db

--Database selection
use HR_attrition_db

--Data verification
select Top 10 * from Hr_data

--count records
select count(*) as Total_Employees from Hr_data

--overall attrition rate
select concat(round(AVG(Attrition_Flag)*100,2),'%') as attrition_rate
from Hr_data

--Department-Wise Attrition
select Department,
AVG(Attrition_Flag) as Attrition_Rate
from Hr_data
group by Department
order by Attrition_Rate desc

--Salary VS Attrition
select salary_Group,
AVG(Attrition_Flag) as Attrition_Rate
from Hr_data
group by salary_Group
order by Attrition_Rate desc

--Experience vs Attrition
select Experience_Group,
AVG(Attrition_Flag) as Attrition_Rate
from Hr_data
group by Experience_Group
order by Attrition_Rate desc

-- Satisfaction Vs Attrition
select Satisfaction_Group,
AVG(Attrition_Flag) as Attrition_Rate
from Hr_data
group by Satisfaction_Group
order by Attrition_Rate desc

--Combination Analysis
select 
Salary_group,
Satisfaction_Group,
AVG(Attrition_Flag) as Attrition_Rate
from Hr_data
group by Salary_group, Satisfaction_Group
order by Attrition_Rate desc
