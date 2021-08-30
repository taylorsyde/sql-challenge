-- list the employee first and last name, sex, and salary
select employees.first_name, employees.last_name, employees.sex, salaries.salary
from employees
join salaries
on  employees.emp_no = salaries.emp_no;

-- list the first and last name of employees hired in 1986
select * from employees
where DATE_PART('year',hire_date) = 1986


select * from departments
--List the manager of each department with department number, department name, 
--the manager's employee number, last name, first name.
select employees.emp_no, employees.first_name, employees.last_name, dept_manager.dept_no, departments.dept_name
from employees
join dept_manager
on  employees.emp_no = dept_manager.emp_no
join departments
on dept_manager.dept_no = departments.dept_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

--List all employees in the Sales department, including their employee number, last name, first name, and department name.

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.