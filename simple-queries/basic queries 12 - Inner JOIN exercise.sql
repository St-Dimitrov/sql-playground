/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/

SELECT a.*, b.firstname, b.lastname, b.state
FROM orders as a
INNER JOIN customers as b ON a.customerid = b.customerid
and (b.state = 'OH' or b.state = 'NY' OR b.state = 'OR')
ORDER BY a.orderid;

/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/

SELECT a.*, b.quan_in_stock, b.sales
FROM products as a
INNER JOIN inventory as b ON a.prod_id = b.prod_id;

/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/

SELECT a.*, c.dept_name
FROM employees as a
INNER JOIN dept_emp as b ON a.emp_no = b.emp_no
INNER JOIN departments AS c ON c.dept_no = b.dept_no
Order BY emp_no;