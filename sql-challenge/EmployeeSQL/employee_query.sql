--Question 1: List the following details of each employee: employee number, last name, first name gender, and salary.
select e.emp_no as "Employee Number",
		e.last_name as "Last Name",
		e.first_name as "First Name",
		e.gender as "Gender",
		s.salary as "Salary"
from employees as e
inner join salaries as s on
e.emp_no=s.emp_no;

--Question 2: List employees who were hired in 1986.
select first_name as "First Name",
		last_name as "Last Name",
		hire_date as "Date of Hire"
from employees
where hire_date between '1986-01-01' and '1986-12-30'
order by hire_date asc, last_name asc, first_name asc;

--Question 3: List the manager of each department with the following information: department number, department name,
--the manager's employee number, last name, first name, and start and end employment dates. 
select m.dept_no as "Department Number",
		d.dept_name as "Department Name",
		m.emp_no as "Employee Number",
		e.last_name as "Last Name",
		e.first_name as "First Name",
		m.from_date as "Position Start Date",
		m.to_date as "Position End Date"
from dept_manager as m

inner join departments as d on
m.dept_no=d.dept_no
inner join employees as e on
m.emp_no=e.emp_no

order by "Department Number";

--Question 4: List the department of each employee with the folloing information: employee number, last name, first name,
--and department name

Select e.emp_no as "Employee Number",
		e.last_name as "Last Name",
		e.first_name as "First Name",
		n.dept_name as "Department"
		
from employees as e

inner join dept_emp as d on
e.emp_no=d.emp_no
inner join departments as n on
d.dept_no=n.dept_no
order by "Employee Number";		
		

--Question 5: List all  employees whose first name is "Hercules" and last names begin with "B".
select first_name as "First Name",
		last_name as "Last Name"
from employees
where first_name = 'Hercules'
and last_name like 'B%'
order by last_name asc;

--Question 6: List all employees in the Sales department, including their employee number, last name, first name,
  --and department. 
Select e.emp_no as "Employee Number",
		e.last_name as "Last Name",
		e.first_name as "First Name",
		n.dept_name as "Department"
	
from employees as e

inner join dept_emp as d on
e.emp_no=d.emp_no
inner join departments as n on
d.dept_no=n.dept_no

where n.dept_name = 'Sales'	

order by "Employee Number";

--Question 7: Question 6: List all employees in the Sales and Development departments, including their employee number,
  --last name, first name, and department. 
Select e.emp_no as "Employee Number",
		e.last_name as "Last Name",
		e.first_name as "First Name",
		n.dept_name as "Department"
	
from employees as e

inner join dept_emp as d on
e.emp_no=d.emp_no
inner join departments as n on
d.dept_no=n.dept_no

where n.dept_name = 'Sales'
or n.dept_name = 'Development'

order by "Department", "Employee Number";

--Question 8: In decending order, list the frequency count of employee last name, i.e. how many employees share each last name.
select last_name as "Last Name",count(last_name) as "Total Employees by Last Name"
from employees
group by last_name
order by "Total Employees by Last Name" desc;


