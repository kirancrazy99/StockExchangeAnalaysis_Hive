create table grown_companies
select distinct s_open.sub_industry,s_open.state, mm.company_name,
((s_close.close-s_open.open)/s_open.open)*100 as growth_percentage
from stocks_accurate mm join
stocks_features s_open on 
mm.company_name=s_open.company_name and
mm.min_month=s_open.trading_month and
mm.min_year=s_open.trading_year
join
stocks_features s_close on 
mm.company_name=s_close.company_name and 
mm.max_month=s_close.trading_month and 
mm.max_year=s_close.trading_year
