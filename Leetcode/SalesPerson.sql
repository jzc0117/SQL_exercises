-- https://leetcode.com/problems/sales-person/description/
select name 
from salesperson
where sales_id not in (select sales_id from orders
    left join company on orders.com_id = company.com_id
    where company.name = 'RED')
