adding manager_id and manager_name columns in employees table for self join 
  
alter table employees add column manager_id integer;

alter table employees add column manager_name text;

update employees 
set manager_id=
case
   when emp_id=101 then 104
   when emp_id=102 then 108
   when emp_id=103 then 106
   when emp_id=104 then 109
   when emp_id=105 then 107
   when emp_id=106 then 110
   when emp_id=107 then 101
   when emp_id=108 then 105
   when emp_id=109 then 103
end
where emp_id in (101,102,103,104,105,106,107,108,109);

update employees 
set manager_name=
case
   when emp_id=101 then 'priya' 
   when emp_id=102 then 'divya' 
   when emp_id=103 then 'sneha' 
   when emp_id=104 then 'manoj' 
   when emp_id=105 then 'rahul' 
   when emp_id=106 then 'pooja' 
   when emp_id=107 then 'ravi' 
   when emp_id=108 then 'arjun' 
   when emp_id=109 then 'kiran' 
end
where emp_id in (101,102,103,104,105,106,107,108,109);
