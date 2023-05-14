Departments
-
dept_no FK >- Dept_Manager.dept_no
dept_name

Dept_Emp
-
emp_no FK >- Employees.emp_no
dept_no FK >- Departments.dept_no


Dept_Manager
-
dept_no FK >- Dept_Emp.dept_no
emp_no FK >- Dept_Emp.emp_no

Employees
-
emp_no FK >- Salaries.emp_no
emp_title_id FK >- Titles.title_id
birth_date
first_name
last_name
sex
hire_date

Salaries
-
emp_no
salary

Titles
-
title_id
title