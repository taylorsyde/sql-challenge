DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE departments (
	dept_no varchar(10) NOT NULL,
	dept_name varchar(50) NOT NULL
);

CREATE TABLE dept_emp (
	emp_no int NOT NULL,
	dept_no varchar(10) NOT NULL
);

-- column dept_mngt was added to this table to differentiate 
-- these employees from the other employees
-- this may need to be changed
CREATE TABLE dept_manager (
	dept_no varchar(10) NOT NULL,
	emp_no int NOT NULL,
	dept_mngt boolean
);

-- emp_title was changed to title id to match the titles cvs
CREATE TABLE employees (
	emp_no int not null,
	title_id varchar(10),
	birth_date date,
    first_name varchar(50) not null,
	last_name varchar(50) not null,
	sex varchar(1),
	hire_date date not null,
    primary key (emp_no),
    foreign key (title_id) REFERENCES titles (title_id)
);

CREATE TABLE salaries (
	emp_no int not null,
	salary int not null
);
	
CREATE TABLE titles (
	title_id varchar(10),
	title varchar(50),
	primary key (title_id)
);

-- import data

-- set all dept_mgnt to true
update dept_manager 
set dept_mngt = true;

-- verify that data was imported
SELECT * FROM departments
SELECT * FROM dept_emp
SELECT * FROM dept_manager
SELECT * FROM employees
SELECT * FROM salaries 
SELECT * FROM titles 