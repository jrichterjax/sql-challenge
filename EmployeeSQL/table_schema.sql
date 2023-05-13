-- Create a table of departments
CREATE TABLE departments (
  dept_no INTEGER NOT NULL,
  dept_name VARCHAR NOT NULL,
  PRIMARY KEY (dept_no)
);

-- Create a table of department_emp
CREATE TABLE department_emp (
  emp_no INTEGER NOT NULL,
  dept_no INTEGER NOT NULL  
);

-- Create a table of dept_manager
CREATE TABLE dept_manager (
  dept_no INTEGER NOT NULL,
  emp_no INTEGER NOT NULL
);

-- Create a table of employees
CREATE TABLE employees (
  emp_no INTEGER NOT NULL,
  emp_title_id INTEGER NOT NULL,
  birth_date
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  sex VARCHAR NOT NULL,
  hire_date
  PRIMARY KEY (emp_no)
);

-- Create a table of salaries
CREATE TABLE salaries (
  emp_no INTEGER NOT NULL,
  salary INTEGER NOT NULL
);

-- Create a table of titles
CREATE TABLE titles (
  title_id INTEGER NOT NULL,
  title VARCHAR NOT NULL,
  PRIMARY KEY (title_no)
);
