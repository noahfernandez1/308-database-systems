--Question 1
SELECT ordernum, totalusd
FROM orders
ORDER BY totalusd;
--Question 2
SELECT lastname, homecity
FROM people
WHERE prefix='Ms.';
--Question 3
SELECT prodid, name, qtyonhand
FROM products
WHERE qtyonhand>1007;
--Question 4
SELECT firstname, homecity
FROM people
ORDER BY dob;
--Question 5
SELECT prefix, lastname
FROM people
WHERE prefix<>'Mr.';
--Question 6
SELECT *
FROM products
WHERE city<>'Dallas'
AND city<>'Duluth'
AND priceusd<3;
--Question 7
SELECT *
FROM orders
WHERE dateordered='2021-01-23'
--Question 8
SELECT *
FROM orders
WHERE dateordered='2021-02-14'
AND totalusd>23000;
--Question 9
SELECT *
FROM customers
WHERE pid=7;
--Question 10
SELECT *
FROM customers
WHERE pid=5;
