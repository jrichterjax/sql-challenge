-- Drop table if exists
DROP TABLE departments;
DROP TABLE titles;
DROP TABLE employees;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE salaries;

-- Create a table of departments
CREATE TABLE departments (
  dept_no VARCHAR(10) NOT NULL,
  dept_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (dept_no)
);

-- Create a table of titles
CREATE TABLE titles (
  title_id VARCHAR(10) NOT NULL,
  title VARCHAR(30) NOT NULL,
  PRIMARY KEY (title_id)
);

-- Create a table of employees
CREATE TABLE employees (
  emp_no INTEGER NOT NULL,
  emp_title_id VARCHAR(10) NOT NULL,
  birth_date DATE,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  sex VARCHAR(10),
  hire_date DATE,
  PRIMARY KEY (emp_no),
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Create a table of department_emp
CREATE TABLE dept_emp (
  emp_no INTEGER NOT NULL,
  dept_no VARCHAR(10) NOT NULL,
  PRIMARY KEY (emp_no, dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Create a table of dept_manager
CREATE TABLE dept_manager (
  dept_no VARCHAR(10) NOT NULL,
  emp_no INTEGER NOT NULL,
  PRIMARY KEY (dept_no, emp_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Create a table of salaries
CREATE TABLE salaries (
  emp_no INTEGER NOT NULL,
  salary INTEGER NOT NULL,
  PRIMARY KEY (emp_no, salary),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Check imported data
select * from departments;
select * from titles;
select * from employees;
select * from dept_emp;
select * from dept_manager;
select * from salaries;
