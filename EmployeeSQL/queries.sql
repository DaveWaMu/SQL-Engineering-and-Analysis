--1
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary 
FROM employees LEFT JOIN salaries ON employees.emp_no = salaries.emp_no;

--2
SELECT first_name, last_name, hire_date
FROM employees WHERE hire_date LIKE '%1989';

--3
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no
FROM dept_manager LEFT JOIN departments ON dept_manager.dept_no = departments.dept_no;
SELECT departments_q3.dept_no, departments_q3.dept_name, departments_q3.emp_no, employees.last_name, employees.first_name
FROM departments_q3 LEFT JOIN employees ON departments_q3.emp_no = employees.emp_no;

--4
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, dept_emp.dept_no
FROM employees LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no;
SELECT emp_q4.emp_no, emp_q4.last_name, emp_q4.first_name, departments.dept_name
FROM emp_q4 LEFT JOIN departments ON emp_q4.dept_no = departments.dept_no;

--5
SELECT first_name, last_name, sex
FROM employees 
WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%';

--6
SELECT departments.dept_no, departments.dept_name, dept_emp.emp_no
FROM departments LEFT JOIN dept_emp ON departments.dept_no = dept_emp.dept_no;

SELECT emp_dept_q6.emp_no, employees.last_name, employees.first_name, emp_dept_q6.dept_name
FROM emp_dept_q6
JOIN employees ON emp_dept_q6.emp_no = employees.emp_no;

SELECT emp_no, last_name, first_name, dept_name
FROM emp_dept_name
WHERE dept_name LIKE 'Sales';

--7
SELECT emp_no, last_name, first_name, dept_name
FROM emp_dept_name
WHERE dept_name LIKE 'Sales' OR dept_name LIKE 'Development';

--8
SELECT COUNT(emp_no), last_name
FROM employees
GROUP BY last_name
ORDER BY COUNT(emp_no) DESC;