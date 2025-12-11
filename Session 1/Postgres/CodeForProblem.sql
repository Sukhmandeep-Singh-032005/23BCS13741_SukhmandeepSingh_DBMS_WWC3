CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

CREATE VIEW Employee_View AS
SELECT 
    emp_id,
    emp_name,
    department,
    salary
FROM Employee;

CREATE ROLE Analyst;

GRANT SELECT ON Employee_View TO Analyst;

INSERT INTO Employee (emp_id, emp_name, department, salary) 
VALUES
(1, 'Naruto Uzumaki', 'IT',       90000),
(2, 'Sasuke Uchiha',  'HR',       75000),
(3, 'Kakashi Hatake', 'IT',       90000),
(4, 'Sakura Haruno',  'Finance',  65000),
(5, 'Shikamaru Nara', 'HR',       55000),
(6, 'Rock Lee',       'IT',       45000);

SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 0;

SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 2;

SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 3;
