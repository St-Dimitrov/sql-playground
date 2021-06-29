/*
*  Show me all the employees, hired after 1991, that have had more than 2 titles
*  Database: Employees
*/

SELECT a.emp_no, count(b.title) AS "titles"
FROM employees AS a
JOIN titles AS b USING(emp_no)
WHERE EXTRACT (YEAR FROM a.hire_date) > 1991
GROUP BY a.emp_no
HAVING titles > 2
ORDER BY a.emp_no;

/*
*  Show me all the employees that have had more than 15 salary changes that work in the department development
*  Database: Employees
*/

SELECT e.emp_no
FROM employees as e
JOIN dept_emp AS de USING(emp_no)
Join salaries AS s USING(emp_no)
WHERE de.dept_no = 'd005'
Group BY e.emp_no
having COUNT(salary) > 15
ORDER BY e.emp_no;

/*
*  Show me all the employees that have worked for multiple departments
*  Database: Employees
*/

SELECT e.emp_no
FROM employees as e
JOIN dept_emp AS de USING(emp_no)
Group BY e.emp_no
having COUNT(de.emp_no) > 1
ORDER BY e.emp_no;