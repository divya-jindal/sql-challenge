-- QUESTIONS:

-- question 1: List the employee number, last name, first name, sex, and salary of each employee.
SELECT 
	employees.emp_no AS "Employee No.", 
	employees.first_name AS "First Name", 
	employees.last_name AS "Last Name", 
	employees.sex AS "Sex", 
	salaries.salary AS "Salary ($)"
FROM employees
JOIN salaries ON
	employees.emp_no = salaries.emp_no;

-- question 2: List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT 
	first_name AS "First Name",
	last_name AS "Last Name",
	hire_date AS "Hire Date"
FROM employees
WHERE hire_date BETWEEN 
	'1986-01-01' and '1986-12-31';

-- question 3: List the manager of each department along with their department number, department name, employee number, last name, and first name.
	-- using dept_man's emp_no and employee's emp_no, pull first and last name from employee and pull dept_name from departments table 
SELECT
    employees.first_name AS "First Name",
    employees.last_name AS "Last Name",
    departments.dept_name AS "Department Name"
FROM dept_manager
JOIN employees ON
	dept_manager.emp_no = employees.emp_no
JOIN departments ON
	dept_manager.dept_no = departments.dept_no;

-- question 4: List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
	-- there are multiple departments for many employees in emp_dept so start with from dept_emp
SELECT
	dept_emp.emp_no AS "Employee No.",
	employees.first_name AS "First Name",
	employees.last_name AS "Last Name",
	departments.dept_name AS "Department Name"
FROM dept_emp 
JOIN employees ON
	dept_emp.emp_no = employees.emp_no
JOIN departments ON
	dept_emp.dept_no = departments.dept_no;

-- question 5: List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT
	first_name AS "First Name",
	last_name AS "Last Name",
	sex AS "Sex"
FROM employees
WHERE
	first_name = 'Hercules' AND
	last_name LIKE 'B%';
	
-- question 6: List each employee in the Sales department, including their employee number, last name, and first name.
	-- dept_no = "d007"
	-- dept_emp join employees
SELECT 
	employees.emp_no AS "Employee Number",
	employees.first_name AS "First Name",
	employees.last_name AS "Last Name"
FROM dept_emp
JOIN employees ON
	dept_emp.emp_no = employees.emp_no
WHERE dept_emp.dept_no = 'd007';

-- question 7: List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT 
	employees.emp_no AS "Employee Number",
	employees.first_name AS "First Name",
	employees.last_name AS "Last Name",
	departments.dept_name AS "Department Name"
FROM dept_emp
JOIN employees ON
	dept_emp.emp_no = employees.emp_no
JOIN departments ON
	dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

-- question 8: List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name AS "Last Name", 
COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;
