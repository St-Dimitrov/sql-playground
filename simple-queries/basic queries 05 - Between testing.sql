
-- Who between the ages of 30 and 50 has an income less than 50 000?
-- (include 30 and 50 in the results)

SELECT * from "public"."customers"
WHERE age BETWEEN 30 and 50;

-- What is the average income between the ages of 20 and 50? (Including 20 and 50)

SELECT AVG(income) from "public"."customers"
WHERE age BETWEEN 20 and 50;