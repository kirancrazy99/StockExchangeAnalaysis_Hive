create table stocks_accurate as 
select company_name,min(trading_year) min_year,max(trading_year) max_year,
min(trading_month) min_month,max(trading_month) max_month
from stocks_features
group by company_name
