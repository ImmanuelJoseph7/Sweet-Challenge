 select A.Child + ' ate the 5th sweet on ' + cast(A.Date as varchar) as 'Fifth_Sweet_Result'
from (select *,
             sum(SweetsEaten) over (partition by Child order by Date) as cumulative,
             sum(SweetsEaten) over (partition by Child) as tot_qty
             
      from Sweets 
     ) A
where cumulative >= 5 and
      cumulative -  SweetsEaten < 5;