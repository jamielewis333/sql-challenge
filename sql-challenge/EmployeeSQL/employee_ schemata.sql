drop table if exists departments, dept_manager, employees, salaries, dept_emp, titles;

CREATE TABLE dept_manager (
    dept_no Varchar   NOT NULL,
    emp_no Integer   NOT NULL,
    from_date Date   NOT NULL,
    to_date Date   NOT NULL
);

 
CREATE TABLE departments (
    dept_no Varchar   NOT NULL,
    dept_name Varchar   NOT NULL
);

CREATE TABLE salaries (
    emp_no Integer   NOT NULL,
    salary Money   NOT NULL,
    from_date Date   NOT NULL,
    to_date Date   NOT NULL
);

CREATE TABLE dept_emp (
    emp_no Integer   NOT NULL,
    dept_no Varchar   NOT NULL,
    from_date Date   NOT NULL,
    to_date Date   NOT NULL
);

CREATE TABLE titles (
    emp_no Integer   NOT NULL,
    title Varchar   NOT NULL,
    from_date Date   NOT NULL,
    to_date Date   NOT NULL
);

CREATE TABLE employees (
    emp_no Integer   NOT NULL,
    birth_date Date   NOT NULL,
    first_name Varchar   NOT NULL,
    last_name Varchar   NOT NULL,
    gender Varchar   NOT NULL,
    hire_date Date   NOT NULL
);






