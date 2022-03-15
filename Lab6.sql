--Question4
SELECT p.pid, p.lastName, coalesce(SUM(totalUSD), 0.00)
FROM customers c left outer join orders o on c.pid = o.custId
INNER JOIN people p on p.pid = c.pid
GROUP BY p.pid, p.lastName
ORDER BY p.lastname DESC;

--Question
select pa.lastName as "Agent", pc.lastName as "Customer", pr.name
from customers c inner join orders o on c.pid = o.custID
inner join agents a on o.agentId = a.pid
inner join people pa on a.pid = pa.pid
inner join people pc on c.pid = pc.pid
inner join products pr on o.prodId = pr.prodId
where pa.homeCity = 'Chilliwack';