select state,sub_industry,growth_percentage from 
(
select state,sub_industry,growth_percentage,
row_number()over(partition by state order by growth_percentage desc) rnk from
(
select state as state ,sub_industry sub_industry,avg(growth_percentage) growth_percentage 
from grown_companies
group by state,sub_industry having count(sub_industry)>=2
)
tbl
)tbl1
where rnk=1
order by 3 desc
