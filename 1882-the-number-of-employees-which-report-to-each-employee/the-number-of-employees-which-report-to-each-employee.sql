
select b.employee_id,b.name,
count(a.employee_id)as reports_count,ROUND(avg(a.age), 0) as average_age
from Employees a join Employees b
on b.employee_id = a.reports_to  
group by b.employee_id
order by b.employee_id
