jerome octive	
Lab 6




select name, city
from customers
where city in (select city
               from products
               group by city
               order by count(city) DESC
               limit 1);

select name
from products 
where priceUSD > (select avg(priceUSD)
                    from products)
order by name DESC;

select c.name, o.pid, o.totalUSD
from orders o inner join customers c on o.cid = c.cid
order by o.totalUSD ASC;

select name, coalesce(sum(o.totalUSD), 0) as "total"
from orders o right outer join customers c on o.cid = c.cid
group by name;

select c.name,
	p.name,
       a.name
from orders o inner join customers c on o.cid = c.cid
	 		  inner join products p on o.pid = p.pid
     		  inner join agents a on o.aid = a.aid
where a.city = 'Newark';

select *
from (select o.*,
      o.qty*p.priceUSD*(1-(c.discount/100)) as actualPriceUSD
      from orders o inner join products p on o.pid = p.pid
      				inner join customers c on o.cid = c.cid) as temptable
where totalUSD != actualPriceUSD;
