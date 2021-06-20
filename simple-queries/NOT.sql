SELECT COUNT(age) FROM customers
-- Count how many customers we have that are NOT 55 or 54 years old
WHERE NOT age = 55 and NOT age = 54;