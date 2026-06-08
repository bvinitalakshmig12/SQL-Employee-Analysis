CREATE TABLE departments (
    dept_id INTEGER PRIMARY KEY,
    dept_name TEXT NOT NULL
);

CREATE TABLE employees (
    emp_id INTEGER PRIMARY KEY,
    emp_name TEXT NOT NULL,
    dept_id INTEGER NOT NULL,
    salary INTEGER NOT NULL,
    hire_date DATE NOT NULL,
    city TEXT NOT NULL,
    manager_id INTEGER,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
