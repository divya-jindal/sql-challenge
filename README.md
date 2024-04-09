# sql-challenge

## Getting Started

To use these queries, you need to have PostgreSQL installed on your system. You also need to have a database where you can run these queries.

# Data Folder

This repository includes a `data` folder that contains the following CSV files:

- `employees.csv`
- `dept_manager.csv`
- `dept_emp.csv`
- `departments.csv`
- `salaries.csv`
- `titles.csv`

These files hold the data that populates the tables in our PostgreSQL database.

### Loading the Data

To load the data into your database, use the `TableSchemata.sql` file. This file contains SQL and PSQL commands to create the necessary tables and import the data from the CSV files. 

Remember to replace `..` in the `\copy` commands with the path to the `data` folder on your system.

### Querying the Data

Once the data is loaded, you can query it using the `Queries.sql` file. This file contains SQL queries designed to extract specific information from the database.


# TableSchemata.sql

This file contains SQL queries to create tables and import data into a PostgreSQL database. The tables created include `departments`, `dept_emp`, `dept_manager`, `salaries`, `titles`, and `employees`.

## Usage

1. Open the `TableSchemata.sql` file in your PostgreSQL client.

2. Replace `..` in the `\copy` commands with the path to the data folder on your system.

3. Run the `CREATE TABLE` queries to create the tables in your database.

4. Run the `\copy` commands to import the data from the CSV files into the tables.

# Queries.sql

This file contains SQL queries that extract specific information from a PostgreSQL database. The queries are designed to answer the following questions:

1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).


## Usage

1. Open the `Queries.sql` and 'TableSchemata.sql' file in your PostgreSQL client.
2. Run the queries to get the desired information.
