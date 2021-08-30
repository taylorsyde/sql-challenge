DROP TABLE IF EXISTS departments;
CREATE TABLE departments (
	dept_no varchar(10) NOT NULL,
	dept_name varchar(50) NOT NULL,
	primary key (dept_no)	
);
SELECT * from departments;


DROP TABLE IF EXISTS titles;
CREATE TABLE titles (
	title_id varchar(10),
	title varchar(50),
	primary key (title_id)
);
SELECT * from titles;


DROP TABLE IF EXISTS employees;
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
SELECT * from employees;


DROP TABLE IF EXISTS dept_emp;
CREATE TABLE dept_emp (
	emp_no int NOT NULL,
	dept_no varchar(10) NOT NULL,
	primary key (emp_no, dept_no),
	foreign key (emp_no) REFERENCES employees (emp_no),
	foreign key (dept_no) REFERENCES departments (dept_no)
);
SELECT * from dept_emp;


DROP TABLE IF EXISTS dept_manager;
CREATE TABLE dept_manager (
	dept_no varchar(10) NOT NULL,
	emp_no int NOT NULL,
	primary key (dept_no, emp_no),
	foreign key (emp_no) REFERENCES employees (emp_no),
	foreign key (dept_no) REFERENCES departments (dept_no)
);
SELECT * from dept_manager;

DROP TABLE IF EXISTS salaries;
CREATE TABLE salaries (
	emp_no int not null,
	salary int not null,
	primary key (emp_no),
	foreign key (emp_no) REFERENCES employees (emp_no)
);
SELECT * from salaries;

-- import data