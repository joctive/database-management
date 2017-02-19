select city
from agents
where aid in (select aid
              from orders
              where cid = 'c006'
              )

select pid
from orders
where aid in (select aid
              from orders
              where cid in (select cid
                            from customers
                            where city = 'Kyoto'
                            )
              )
order by pid DESC

select cid, name
from customers
where cid not in (select cid
                  from orders
                  where aid = 'a01'
                 )

select distinct cid, name 
from customers
where cid in (select cid from orders
      	     where pid = 'p07'
    	       and cid in(select cid
                           from orders
			  where pid = 'p01'
                          )
    	    )

select distinct pid
from orders
where cid not in(select cid
                 from orders
                 where aid = 'a08'
                 )
order by pid DESC;
               
select name, discount, city
from customers
where cid in(select cid
             from orders
             where aid in(select aid
                          from agents
                          where city = 'Tokyo'
                                 or city = 'New York')
                          )
             )

select *
from customers
where discount in(select discount
                  from customers
                  where city in('Duluth', 'London')
                  )
