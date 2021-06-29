
  
/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/

SELECT hire_date, COUNT(emp_no) AS "amount"
FROM employees
GROUP BY hire_date
ORDER BY amount;

/*
*   Show me all the employees, hired after 1991 and count the amount of positions they've had
*  Database: Employees
*/

SELECT a.emp_no, count(b.title) as "titles"
FROM employees as a
JOIN titles as b USING(emp_no)
WHERE EXTRACT (YEAR FROM a.hire_date) > 1991
GROUP BY a.emp_no
order BY a.emp_no;


/*
*  Show me all the employees that work in the department development and the from and to date.
*  Database: Employees
*/

SELECT e.emp_no, de.from_date, de.to_date
FROM employees as e
JOIN dept_emp AS de USING(emp_no)
WHERE de.dept_no = 'd005'
ORDER BY e.emp_no;