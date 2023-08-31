--__Data Engineering__--

--Drop Table titles;
--Drop Table employees;
--Drop Table departments;
--Drop Table dept_manager;
--Drop Table dept_emp;
--Drop Table salaries;

Create Table titles (
	title_id VARCHAR(255) NOT NULL,
	title VARCHAR(255) NOT NULL,
	primary key (title_id)
);

Create Table employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(255) NOT NULL,
	birth_date date NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date date NOT NULL,
	primary key (emp_no),
	foreign key (emp_title_id) references titles (title_id)
);

Create Table departments (
	dept_no VARCHAR(255) NOT NULL,
	dept_name VARCHAR(255) NOT NULL,
	primary key (dept_no)
);

Create Table dept_manager (
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL,
	primary key (emp_no),
	foreign key (dept_no) references departments (dept_no),
	foreign key (emp_no) references employees (emp_no)
);

Create Table dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	primary key (emp_no, dept_no),
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no)
);

Create Table salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	primary key (emp_no),
	foreign key (emp_no) references employees (emp_no)
);

