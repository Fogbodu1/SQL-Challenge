---1. List each employee's  number, last name, first name, sex, and salary.
select 
e.emp_no,
e.last_name, 
e.first_name, 
e.sex, 
s.salary

from employees e
left join salaries s on
e.emp_no=s.emp_no;

---2. List first name, last name, and hire date for employees who were hired in 1986.
select 
first_name, 
last_name, 
hire_date

from employees 
Where DATE_PART('year',hire_date) =1986;

---3. List the manager of each department with the department number, department name, the manager's employee number, last name, first name.
select 
dm.dept_no,
d.dept_name,
dm.emp_no,
e.last_name,
e.first_name
from dept_manager dm
left join departments d
on dm.dept_no=d.dept_no
left join employees e
on dm.emp_no=e.emp_no;

---4. List the department of each employee with the following information: employee number, last name, first name, 
--and department name.
select 
e.emp_no,
e.last_name, 
e.first_name,
d.dept_name

from employees e
left join
dept_emp de
on e.emp_no=de.emp_no
left join
departments d
on de.dept_no=d.dept_no;

----5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select 
e.first_name,
e.last_name,
e.sex

from employees e
Where e.first_name ='Hercules'
And last_name like 'B%'

---6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select 
e.emp_no,
e.last_name, 
e.first_name,
d.dept_name

from employees e
left join
dept_emp de
on e.emp_no=de.emp_no
left join
departments d
on de.dept_no=d.dept_no
Where d.dept_name='Sales';

---7. List all employees in the Sales and Development departments, including their employee number, last name, first name,
---and department name.
select 
e.emp_no,
e.last_name, 
e.first_name,
d.dept_name

from employees e
left join
dept_emp de
on e.emp_no=de.emp_no
left join
departments d
on de.dept_no=d.dept_no
Where d.dept_name='Sales' 
OR d.dept_name='Development';

---8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select 
e.last_name,
Count (e.last_name) as Count

from employees e
group by 
e.last_name
Order by Count DESC;

















