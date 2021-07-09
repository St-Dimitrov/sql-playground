SELECT 
    *,
    MAX(salary) OVER()
FROM salaries