
         create table sector_growth as 
         select stocks.sector,stocks.trading_year,(close_s.close-open_s.open) growth from  	stocks_features stocks
	join 
	(select  avg(open) open,sector,trading_year from stocks_features where 	trading_month=1 group by sector,trading_year) open_s
	on 
	open_s.sector=stocks.sector and open_s.trading_year=stocks.trading_year
	join 
	(select  avg(close),sector,trading_year from stocks_features where trading_month=12 	group by sector,trading_year) close_s
	on 
	close_s.sector=stocks.sector and close_s.trading_year=stocks.trading_year
