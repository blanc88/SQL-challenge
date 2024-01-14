-- DATA ANALYSIS

--1. Employee details with salary
SELECT Employees.emp_no, Employees.first_name, 
Employees.last_name, Employees.sex, Salaries.salary

FROM Employees
INNER JOIN Salaries ON 
Employees.emp_no = Salaries.emp_no;


--2. Employees hired in 1986
SELECT emp_no, first_name, last_name, hire_date from Employees
WHERE hire_date >= '1985-12-31'
AND hire_date < '1987-01-01';


--3. Manager of each department 
SELECT Departments.dept_name, Department_Manager.dept_no,
Department_Manager.emp_no, Employees.last_name, Employees.first_name
FROM Department_Manager
JOIN Departments ON
Department_Manager.dept_no = Departments.dept_no
JOIN Employees ON
Department_Manager.emp_no = Employees.emp_no;


--4.Department number for each employee
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Employees 
JOIN Department_Manager ON 
Employees.emp_no = Department_Manager.emp_no
JOIN Departments ON
Department_Manager.dept_no = Departments.dept_no;


--5. First name is Hercules, Last name begins with B
SELECT * FROM Employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';


--6. Employees in Sales
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Employees 
JOIN Department_Employees ON
Employees.emp_no = Department_Employees.emp_no
JOIN Departments ON
Department_Employees.dept_no = Departments.dept_no
WHERE dept_name = 'Sales';


--7. Employees in Sales and Development
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Employees 
JOIN Department_Employees ON
Employees.emp_no = Department_Employees.emp_no
JOIN Departments ON
Department_Employees.dept_no = Departments.dept_no
WHERE dept_name = 'Sales' OR
	dept_name = 'Development';


--8. Frequency counts in descending order of all employees with the same last name
SELECT last_name, COUNT(last_name) FROM Employees
GROUP BY last_name
ORDER BY count(last_name) desc;

