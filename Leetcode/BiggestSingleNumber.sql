select 
max(num) as num
from (
    select
    num, 
    ifnull(count(num), NULL) as cnt
    from mynumbers
    group by num
    order by num desc
) as subq
where cnt = 1
