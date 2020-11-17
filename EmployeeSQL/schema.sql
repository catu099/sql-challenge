CREATE TABLE Employees (
	emp_no INT PRIMARY KEY,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	gender VARCHAR (2) NOT NULL,
	hire_date DATE NOT NULL	
);
	
CREATE TABLE Tittles (
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	tittle VARCHAR(30)NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);

CREATE TABLE Salaries (
	emp_no INT PRIMARY KEY,
	salary INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);

CREATE TABLE Departments (
	dept_no VARCHAR(10) PRIMARY KEY,
	dept_name VARCHAR(50)NOT NULL
);

CREATE TABLE Dept_emp (
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	dept_no VARCHAR(10),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);

CREATE TABLE Dept_manager (
	dept_no VARCHAR(10),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);	
	

