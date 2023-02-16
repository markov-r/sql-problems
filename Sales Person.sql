select sp.name from SalesPerson sp
where sp.name not in 
    (select distinct sp.name 
    from SalesPerson sp
    join Orders o on sp.sales_id = o.sales_id
    join Company c on c.com_id = o.com_id
    where c.name = "RED")