-- List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT employees.emp_no, 
employees".last_name,
employees.first_name,
employees.gender,
salaries.salary
FROM employees
JOIN salaries

--List employees who were hired in 1986.

SELECT * FROM employees
WHERE hire_date = 1986
ORDER BY emp_no;

--List the manager of each department along with their department number, department name, employee number, last name, and first name 

SELECT  
departments.Dept_no
departments.Dept_name,
dept_manager.Dept_no
dept_manager.Emp_no,
employees.Last_name, 
employees.First_name,
FROM departments
JOIN dept_manager
JOIN employees 
ORDER BY emp_no

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name

SELECT
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees 
JOIN departments
rder by emp_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B 

SELECT * FROM employees
WHERE first_name = 'Hercules' AND last_name 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name
SELECT 
employees.emp_no, 
employees.last_name, 
employees.first_name,
dept_emp.dept_no
deparments.dept_name
FROM employees
join deparments
Join dept_emp
where dept_name = Sales

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT 
employees.emp_no, 
employees.last_name, 
employees.first_name,
dept_emp.dept_no
deparments.dept_name
FROM employees
join deparments
Join dept_emp
where dept_name = (Sales, Development)

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) 
select
employee.last_name, 
count (*),
from employees