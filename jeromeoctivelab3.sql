select ordNumber , totalUSD from Orders;

select name, city from Agents
where  name = �Smith�;

select pid, name, priceUSD from Products
where  quantity > 200100;

select name, city from Customers
where city = �Duluth� ;

select name from Products
where city not in (�New York�,  �Duluth�) ;

select * from Agents 
where city not in (�Dallas�,  �Duluth�)  and priceUSD >=  1 ;

select *
from Orders
where  month = �Feb�  or  month  =  �May� ;

select *
from Orders
where  month = �Feb�  and priceUSD  >=  600;

select *
from Orders
where cid = �C005� ;



