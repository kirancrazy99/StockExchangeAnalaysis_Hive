  select sector,trading_year,growth from 
(
select sector,trading_year,growth,
row_number()over(partition by sector order by growth ) rnk
from sector_growth) abc
where rnk=1
  