select c.name as "name"
from Customer as c
where c.referee_id != 2
or c.referee_id is null