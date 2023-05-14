-- Drop table if exists
DROP TABLE departments;
DROP TABLE titles;
DROP TABLE employees;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE salaries;


-- Create a table of departments
CREATE TABLE departments (
  dept_no VARCHAR,
  dept_name VARCHAR,
  PRIMARY KEY (dept_no)
);

-- Create a table of titles
CREATE TABLE titles (
  title_id VARCHAR,
  title VARCHAR,
  PRIMARY KEY (title_id)
);

-- Create a table of employees
CREATE TABLE employees (
  emp_no INTEGER,
  emp_title_id VARCHAR,
  birth_date DATE,
  first_name VARCHAR,
  last_name VARCHAR,
  sex VARCHAR,
  hire_date DATE,
  PRIMARY KEY (emp_no),
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Create a table of department_emp
CREATE TABLE dept_emp (
  emp_no INTEGER,
  dept_no VARCHAR,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Create a table of dept_manager
CREATE TABLE dept_manager (
  dept_no VARCHAR,
  emp_no INTEGER,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Create a table of salaries
CREATE TABLE salaries (
  emp_no INTEGER,
  salary INTEGER,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


select * from departments;
select * from titles;
select * from employees;
select * from dept_emp;
select * from dept_manager;
select * from salaries;