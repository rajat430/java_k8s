CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL UNIQUE,
    location VARCHAR(50)
);


CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50) NOT NULL,
    dept_id INT,
    salary INT,
    hire_date DATE,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO departments (dept_id, dept_name, location) VALUES
(10, 'IT', 'Bangalore'),
(20, 'HR', 'Pune'),
(30, 'Finance', 'Mumbai'),
(40, 'Sales', 'Delhi');

INSERT INTO employees (emp_name, dept_id, salary, hire_date) VALUES
('Rajat', 10, 70000, '2022-01-10'),
('Amit', 20, 45000, '2021-06-15'),
('Neha', 10, 80000, '2023-03-01'),
('Priya', 30, 60000, '2020-11-20'),
('Karan', 40, 50000, '2022-09-05'),
('Simran', NULL, 55000, '2023-07-12'); -- no department
