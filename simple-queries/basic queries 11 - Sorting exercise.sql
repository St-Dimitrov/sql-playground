
/*
* DB: Employees
* Table: employees
* Question: Sort employees by first name ascending and last name descending
*/

SELECT * FROM public.employees
Order BY first_name, last_name DESC;

/*
* DB: Employees
* Table: employees
* Question: Sort employees by age
*/

SELECT * FROM public.employees
Order BY birth_date DESC;

/*
* DB: Employees
* Table: employees
* Question: Sort employees who's name starts with a "k" by hire_date
*/

SELECT * FROM public.employees
WHERE first_name LIKE 'K%'
Order BY hire_date DESC;