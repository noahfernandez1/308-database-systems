--Question1
SELECT people.*
FROM people
INNER JOIN customers ON people.pid=customers.pid;
--Question2
SELECT people.*
FROM people
INNER JOIN agents ON people.pid=agents.pid;
--Question3
SELECT people.*,agents.*
FROM people
INNER JOIN customers ON people.pid=customers.pid
INNER JOIN agents ON people.pid=agents.pid;
--Question4
SELECT firstname
FROM people
WHERE pid IN (
SELECT pid
FROM customers
WHERE pid NOT IN (
SELECT custid
FROM orders));
--Question5
SELECT DISTINCT people.firstname
FROM people
INNER JOIN orders ON people.pid = orders.custid
FULL JOIN customers ON people.pid = customers.pid;
--Question6
SELECT agents.pid,agents.commissionpct
FROM agents
INNER JOIN customers ON customers.pid = '008'
FULL JOIN orders ON agents.pid = orders.custid
ORDER BY agents.commissionpct ASC;
--Question7
SELECT people.lastname,agents.commissionpct
FROM agents
INNER JOIN people ON people.pid = '001'
FULL JOIN orders ON agents.pid = orders.custid
ORDER BY agents.commissionpct ASC;
--Question8
SELECT lastname,homecity
FROM people
WHERE pid IN(
SELECT pid
FROM customers
WHERE pid IN(
SELECT pid
FROM people
WHERE homecity IN(
SELECT city
FROM products
WHERE qtyonhand IN(
SELECT COUNT(qtyonhand)
FROM products
GROUP BY qtyonhand))));
--Question9
SELECT name, prodid
FROM products
WHERE prodid IN(
SELECT prodid
FROM orders
WHERE custid IN(
SELECT custid
FROM customers
WHERE pid IN(
SELECT pid
FROM people
WHERE homecity='Arlington'
ORDER BY homecity ASC)));
--Question10
SELECT DISTINCT firstname, lastname, homecity
FROM people
WHERE pid IN(
SELECT pid
FROM customers
WHERE pid IN(
SELECT agents.pid
FROM agents
FULL JOIN customers ON customers.pid = agents.pid));