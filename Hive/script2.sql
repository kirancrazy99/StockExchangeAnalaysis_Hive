create table stocks_features as 
select trading_year,trading_month,s_price.symbol,company_name,
split(headquarter,';')[1] as State, sector, sub_industry,open,close
,low,high,volume from stock_companies s_companies
join
(
select year(trading_date) as trading_year,
date_format(trading_date,'MMM')trading_month,symbol,
round(avg(open),2) open,round(avg(close),2) close,round(avg(low),2) low,
round(avg(high) ,2) high,
round(avg(volume),2) volume
from stock_prices
group by year(trading_date),date_format(trading_date,'MMM'),symbol
)s_price on 
s_companies.symbol=s_price.symbol
