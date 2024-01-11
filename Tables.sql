-- Create Tables 

CREATE TABLE Departments(  
  Dept_no VARCHAR(10),
  Dept_name VARCHAR(10) NOT NULL,
  PRIMARY KEY (dept_no)
);

-- Check data import
SELECT *
FROM Departments;

CREATE TABLE Employees (
	Emp_no INT NOT NULL,
	Emp_title_id INT Not Null,
	Birth_date DATE NOT NULL,
	First_name VARCHAR(10) NOT NULL,
	Last_name VARCHAR(10) NOT NULL,
	Sex VARCHAR(10) NOT NULL,
	Hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

-- Check data import
SELECT *
FROM Employees;

CREATE TABLE Dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	Foreign KEY (emp_no),
	Foreign KEY (dept_no)
);
-- Check data import
SELECT *
FROM Dept_emp;

CREATE TABLE Dept_managers (
 dept_no VARCHAR (10),
 emp_no INT,
 FOREIGN KEY (dept_no),
 FOREIGN KEY (emp_no)
);

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY(emp_no)
);

CREATE TABLE titles (
	Title_id INT NOT NULL,
	Title VARCHAR(10) NOT NULL,
);