--__DataAnalsis__--

--#1--
Select employees.emp_no, employees.last_name, employees.first_name, employees.sex , salaries.salary
From employees
Inner Join salaries On salaries.emp_no = employees.emp_no;
--#2--
Select employees.first_name, employees.last_name, employees.hire_date
From employees
Where Extract(Year From hire_date) = 1986;
--#3--
Select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
From dept_manager
Inner Join departments On dept_manager.dept_no = departments.dept_no
Inner Join employees On dept_manager.emp_no = employees.emp_no;
--#4--
Select dept_emp.dept_no, dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
From dept_emp
Inner Join employees On dept_emp.emp_no = employees.emp_no
Inner Join departments On dept_emp.dept_no = departments.dept_no;
--#5--
Select employees.first_name, employees.last_name, employees.sex
From employees
Where  employees.first_name = 'Hercules' And employees.last_name Like 'B%';
--#6--
Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
From employees
Inner Join dept_emp On employees.emp_no = dept_emp.emp_no
Inner Join departments On dept_emp.dept_no = departments.dept_no
Where dept_emp.dept_no = 'd007';
--#7--
Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
From employees
Inner Join dept_emp On employees.emp_no = dept_emp.emp_no
Inner Join departments On dept_emp.dept_no = departments.dept_no
Where dept_emp.dept_no = 'd007' Or  dept_emp.dept_no = 'd005'
--#8--
Select employees.last_name, Count(employees.last_name)
From employees
Group By employees.last_name
Order By Count(employees.last_name) Desc;
