--Question1
SELECT *
FROM people
WHERE pid IN (
SELECT pid
FROM customers);
--Question2
SELECT *
FROM people
WHERE pid IN (
SELECT pid
FROM agents);
--Question3
SELECT *
FROM people
WHERE pid IN (
SELECT pid
FROM customers
WHERE pid in(
SELECT pid
FROM agents));
--Question4
SELECT *
FROM people
WHERE pid NOT IN(
SELECT pid
FROM agents
UNION
SELECT pid
FROM customers);
--Question5
SELECT DISTINCT custid
FROM orders
WHERE prodid = 'p01'
OR prodid = 'p03';
--Question6
SELECT DISTINCT custid
FROM orders
WHERE prodid = 'p01'
INTERSECT
SELECT custid
FROM orders
WHERE prodid = 'p03';
--Question7
SELECT firstname, lastname
FROM people
WHERE pid IN (
SELECT pid
FROM agents
WHERE pid IN (
SELECT agentid
FROM orders
WHERE prodid = 'p05'
OR prodid = 'p07'));
--unsure how to sort list

--Question8
SELECT homecity, dob
FROM people
WHERE pid IN (
SELECT pid
FROM agents
WHERE pid IN (
SELECT agentid
FROM orders
WHERE custid = '8'));
--Question9
SELECT DISTINCT prodid
FROM orders
WHERE custid IN (
SELECT pid
FROM customers
WHERE pid IN (
SELECT pid
FROM people
WHERE homecity = 'Montreal'));
--Question10
SELECT lastname, homecity
FROM people
WHERE pid IN (
SELECT custid
FROM orders
WHERE agentid IN(
SELECT pid
FROM people
WHERE homecity = 'Chilliwack'
	OR homecity = 'New Orleans'));