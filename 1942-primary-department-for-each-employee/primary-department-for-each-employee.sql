# Write your MySQL query statement below
with xPrimary as (
    select employee_id,department_id from employee
    where primary_flag = 'Y'
)

select *
from xPrimary
union 
select employee_id,department_id from employee
where primary_flag = 'N' and employee_id not in (
    select employee_id from employee
    where primary_flag = 'Y'
)