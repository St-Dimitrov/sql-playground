SELECT 
    *,
    AVG(salary) OVER(
        PARTITION BY d.dept_name
    )
FROM salaries
JOIN dept_emp AS a USING (emp_no)
JOIN departments AS d USING (dept_no)
ORDER BY emp_no