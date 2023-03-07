USE employees;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS manager_name
FROM departments AS d
JOIN dept_manager AS dm
ON dm.dept_no = d.dept_no
AND dm.to_date = '9999-01-01'
JOIN employees AS e
ON e.emp_no = dm.emp_no;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments d
JOIN dept_manager dm ON dm.dept_no = d.dept_no
JOIN employees e ON e.emp_no = dm.emp_no
WHERE e.gender = 'F' AND dm.to_date = '9999-01-01';


SELECT t.title, COUNT(*) AS Total
FROM employees AS e
         JOIN dept_emp AS de ON e.emp_no = de.emp_no
         JOIN departments AS d ON de.dept_no = d.dept_no
         JOIN titles AS t ON e.emp_no = t.emp_no
WHERE d.dept_name = 'Customer Service' AND de.to_date = '9999-01-01'
GROUP BY t.title
ORDER BY Total DESC;


SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS manager_name, s.salary
FROM salaries AS s
         JOIN dept_manager AS dm ON dm.emp_no = s.emp_no
         JOIN employees AS e ON e.emp_no = dm.emp_no
         JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE s.to_date = '9999-01-01' AND dm.to_date = '9999-01-01'
GROUP BY d.dept_name, manager_name, s.salary;


