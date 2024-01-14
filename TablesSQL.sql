
DROP TABLE Titles;
DROP TABLE Salaries;
DROP TABLE Employees;
DROP TABLE Departments; 
DROP TABLE Department_Manager;
DROP TABLE Department_Employees;


---DATA ENGINEERING---

CREATE TABLE Employees (
	emp_no INT 	NOT NULL,
	emp_title_id VARCHAR(255) NOT NULL,
	birth_date DATE  NOT NULL,
	first_name VARCHAR(255)  NOT NULL, 
	last_name VARCHAR(255)  NOT NULL,
	sex VARCHAR(1)  NOT NULL,
	hire_date DATE  NOT NULL,
	PRIMARY KEY (emp_no)
);


SELECT * from Employees; 


CREATE TABLE Departments (
	dept_no VARCHAR(255)  NOT NULL,
	dept_name VARCHAR(255) NOT NULL,
	PRIMARY KEY (dept_no)
);

SELECT * from Departments;



CREATE TABLE Department_Employees (
	emp_no INT NOT NULL,
	dept_no VARCHAR(255) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

SELECT * from Department_Employees;


CREATE TABLE Department_Manager (
	dept_no VARCHAR(255) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

SELECT * from Department_Manager;


CREATE TABLE Salaries (
	emp_no INT NOT NULL,
	salary INTEGER NOT NULL,  
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);


SELECT * from Salaries;



CREATE TABLE Titles (
	title_id VARCHAR(255) NOT NULL,
	title VARCHAR(255) NOT NULL,
	PRIMARY KEY (title_id)
);

SELECT * from Titles;


