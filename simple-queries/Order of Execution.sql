SELECT * FROM customers
-- Selects all female customers from Origon and New York
WHERE (state = 'OR' OR state = 'NY') and gender = 'F';