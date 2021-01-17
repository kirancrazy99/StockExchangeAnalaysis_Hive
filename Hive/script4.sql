select sc.company_name,
((s_close.close-s_open.open)/s_open.open)*100 as growth_percentage
from stocks_accurate sc join
stocks_features s_open on 
sc.company_name=s_open.company_name and
sc.min_month=s_open.trading_month and
sc.min_year=s_open.trading_year
join
stocks_features s_close on 
sc.company_name=s_close.company_name and 
sc.max_month=s_close.trading_month and 
sc.max_year=s_close.trading_year
order by growth_percentage desc
limit 5
