-- Create tables: replace .. with path to data folder in your system for the psql commands
CREATE TABLE departments (
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);

-- import using import tool on table created since data points are separated by quotes

CREATE TABLE dept_emp(
	emp_no INTEGER,
	dept_no VARCHAR(4),
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- in psql
--\copy dept_emp FROM '../data/dept_emp.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE dept_manager (
	dept_no VARCHAR(4),
	emp_no INTEGER,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- in psql
--\copy dept_manager FROM '../data/dept_manager.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE salaries (
	emp_no INTEGER PRIMARY KEY,
	salary INTEGER NOT NULL
);

-- in psql
-- \copy salaries FROM '../data/salaries.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE titles (
	title_id VARCHAR(5) PRIMARY KEY,
	title VARCHAR NOT NULL
);

-- in psql
-- \copy titles FROM '../data/titles.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE employees (
    emp_no INTEGER PRIMARY KEY,
    emp_title_id VARCHAR(5) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- in psql
-- \copy employees FROM '../data/employees.csv' DELIMITER ',' CSV HEADER;












