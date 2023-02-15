select c.name as "Customers" 
from Customers as c
where c.id not in (
    select distinct (o.customerId) 
    from Orders as o
)