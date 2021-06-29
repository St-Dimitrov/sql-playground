-- count all non-Manager employees

SELECT COUNT(emp.emp_no)
FROM employees AS emp
LEFT JOIN dept_manager AS dep ON emp.emp_no = dep.emp_no
WHERE dep.emp_no IS NULL;


-- show all salary rises and sort out the once with title change as you know title changes 2 days after pay rise

SELECT a.emp_no, b.salary, COALESCE(c.title, 'no title change')
FROM employees as a
INNER JOIN salaries AS b ON b.emp_no = a.emp_no
LEFT JOIN titles AS c ON c.emp_no = a.emp_no
AND (c.from_date = b.from_date OR c.from_date = b.from_date + interval '2 days')
Order BY emp_no;