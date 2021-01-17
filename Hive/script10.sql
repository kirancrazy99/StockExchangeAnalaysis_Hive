select sector,trading_year,growth,avg_growth from 
(
select distinct  sector,trading_year,round(growth) growth,
round(avg(growth)over(partition by sector )) avg_growth
from sector_growth
) abc
where growth=avg_growth
