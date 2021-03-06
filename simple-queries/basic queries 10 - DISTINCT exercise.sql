  
/*
* DB: Employees
* Table: titles
* Question: What unique titles do we have?
*/

SELECT DISTINCT title FROM public.titles;


/*
* DB: Employees
* Table: employees
* Question: How many unique birth dates are there?
*/

SELECT DISTINCT birth_date FROM public.employees;

/*
* DB: World
* Table: country
* Question: Can I get a list of distinct life expectancy ages
* Make sure there are no nulls
*/

--SELECT DISTINCT COALESCE("lifeexpectancy", 'NAN') FROM country
SELECT DISTINCT lifeexpectancy FROM country