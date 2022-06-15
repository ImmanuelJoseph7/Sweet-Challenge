select id, Child,Date,SweetsEaten,
       sum(SweetsEaten) over (partition by Child order by Date) as cumulative,
       case when (sum(SweetsEaten) over (partition by Child order by Date) > = 5)
         Then Child + ' ate the 5th sweet on ' + cast( Date as varchar) 
         Else '' END
from Sweets;