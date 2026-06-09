select * from employees;

select emp_name from employees;

select * from employees where salary>60000;

select * from employees where city='Hyderabad';

select * from employees order by salary desc;

select * from employees order by salary desc limit 3;

select count (*) as Total_count from employees ;

select avg(salary) as Avg_salary from employees;

select max(salary) as Max_salary from employees;

select min(salary)as Min_salary from employees;

select e.emp_name,d.dept_name,e.salary from employees e inner join departments d 
 on e.emp_id=d.dept.id;

select e.emp_name,d.dept_name,e.salary from employees e left join departments d 
on e.emp_id=d.dept_id;

select e.emp_name as EMPLOYEES,e.manager_name as Manager from employees e self join employees m
on e.emp_id=m.emp_id;

select dept_id, count (*) as employee_count from employees group by dept_id;

select dept_id,avg(salary) from employees group by dept_id;

select dept_id, count (*) from employees group by dept_id having count (*)>2;

select*from employees where salary>(select max(salary) from employees);

select emp_name, salary,row_number()over(order by salary desc)rn from employees;

select emp_name, salary,rank()over(order by salary desc)rnk  from employees;

select emp_name, salary,dense_rank()over(Order by salary desc)drnk from employees;

with high_salary as(select*from employees where salary>60000) select* from high_salary;




