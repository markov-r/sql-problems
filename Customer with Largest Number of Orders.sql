# finds customer with largest number of orders
select count(o.customer_number)
from Orders o
group by o.customer_number
order by count(o.customer_number) desc
limit 1

#lists all customers with largest number of orders (in case there's a tie at the top)
select o.customer_number
from Orders o
group by o.customer_number
having count(o.customer_number) = (
    select count(o.customer_number)
    from Orders o
    group by o.customer_number
    order by count(o.customer_number) desc
    limit 1
    )