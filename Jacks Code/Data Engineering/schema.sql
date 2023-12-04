-- create titles table
CREATE TABLE titles (
	title_id varchar(5) PRIMARY KEY NOT NULL,
	title varchar(30) NOT NULL
);

-- create employees table 
CREATE TABLE employees (
	emp_no int PRIMARY KEY NOT NULL,
	emp_title_id varchar(5) NOT NULL,
	birth_date date NOT NULL,
	first_name varchar(45) NOT NULL,
	last_name varchar(45) NOT NULL,
	sex varchar(1) NOT NULL,
	hire_date date NOT NULL,
    FOREIGN KEY (emp_title_id) references titles (title_id)
);

-- create departments table
CREATE TABLE departments (
	dept_no varchar(5) PRIMARY KEY NOT NULL,
	dept_name varchar(30) NOT NULL
);

-- create department managers table
CREATE TABLE dept_manager (
	dept_no varchar(5) NOT NULL,
	emp_no int NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (emp_no) references employees(emp_no),
    FOREIGN KEY (dept_no) references departments(dept_no)
);

-- create department employees table 
CREATE TABLE dept_emp (
	emp_no int  NOT NULL,
	dept_no varchar(5) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) references employees(emp_no),
    FOREIGN KEY (dept_no) references departments(dept_no)
);

-- create salaries table
CREATE TABLE salaries (
	emp_no int NOT NULL,
	salary int NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) references employees(emp_no)
);
