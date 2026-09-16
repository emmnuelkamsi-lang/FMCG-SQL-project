SELECT * FROM dap.international_fmcg_sql_assessment;
-- checking for missing values
-- checking duplicates
-- FIND THE TOTAL PROFIT IN YEARS

select YEARS, sum(PROFIT) as  total_profit
from international_fmcg_sql_assessment
group by YEARS;

-- COMPARE THE TOTAL PROFIT IN REGION 

select REGION , sum(PROFIT) as Total_profit
from international_fmcg_sql_assessment
group by REGION
order by  Total_profit DESC ;

-- COUNTRIES THAT GENETRATED THE HIGHEST PROFIT IN 2019

select COUNTRIES,sum(PROFIT)as profit_2019
from international_fmcg_sql_assessment
where YEARS = 2019
group by COUNTRIES;

-- THE YEAR WITH THE HIGHEST PROFIT

Select YEARS, sum(PROFIT) as Total_profit
from international_fmcg_sql_assessment
group by YEARS
order by  Total_profit DESC ;

-- WHICH MONTH IN THREE YEARS WAS THE LEAST PROFIT GENETRATED

select YEARS,MONTHS,sum(PROFIT) as Total_profit
from international_fmcg_sql_assessment
group by YEARS, MONTHS
order by  Total_profit ASC;

-- WHAT WAS THE MINIMUM PROFIT IN THE MONTH OF DECEMBER 2018
 
 select MONTHS, min(PROFIT) as Minimum_profit
 from international_fmcg_sql_assessment
 where YEARS = 2018 and MONTHS = "December";
 
 -- COMPARE THE PROFIT IN PERCENTAGE FOR EACH OF THE MONTH IN 2019
 
 select MONTHS, sum(PROFIT) as Monthly_profit, (sum(PROFIT)/sum(COST)* 100.0)
 from international_fmcg_sql_assessment
 where YEARS = 2019 
 group by MONTHS
 order by  Monthly_profit DESC;
 
 -- WHICH BRAND GENERATED THE HIGHEST PROFIT IN SENEGAL
 
 select BRANDS,sum(PROFIT) as Total_profit
 from international_fmcg_sql_assessment
 where COUNTRIES = 'Senegal'
 group by BRANDS
 order by  Total_profit DESC ;
 
 -- CALCULATE PROFIT OVER THE THREE YEARS
 select YEARS,sum(PROFIT) as Total_profit 
 from international_fmcg_sql_assessment
 group by YEARS ;
 
 -- TOP 3 BRANDS CONSUMED IN FRANCOPHONECOUNTRIES(FRENCH SPEAKING COUNTRIES)
 
 select BRANDS, sum(QUANTITY) as Total_quantity
 from  international_fmcg_sql_assessment
 where COUNTRIES IN ('Senegal', 'Togo', 'Benin')
 group by BRANDS
 order by Total_quantity DESC
 LIMIT 3;
 
 -- TOP 2 CONSUMER BRANDS IN GHANA 
 
 select BRANDS, sum(QUANTITY) as Total_quantity
 from  international_fmcg_sql_assessment
 where COUNTRIES ='Ghana'
 group by BRANDS
 order by Total_quantity DESC
 LIMIT 2;
 
 -- DETAIL OF BEERS CONSUMED (PAST 3 YEARS)IN MOST OIL-RICH COUNTRY(NIGERIA)
 
 select * from international_fmcg_sql_assessment
 where COUNTRIES = 'Nigeria' and BRANDS IN ('Budweiser','trophy','eagle lager','hero', 'castle lite')
 and YEARS BETWEEN 2017 AND 2018 ;
 
 -- FAVORITE MALT BRAND IN ANALOPHONE REGION (ENGLISH-SPEAKING)BETWWEN 2018 AND 2019
 
 SELECT BRANDS,sum(QUANTITY) AS Total_quantity
 from international_fmcg_sql_assessment
 where COUNTRIES IN ('Nigeria', 'Ghana') AND YEARS BETWEEN 2018 AND 2019 AND BRANDS LIKE '%malt%'
 group by BRANDS ;
 
 -- WHICH BRANDS SOLD HIGHEST IN 2019 IN NIGERIA
 
 select BRANDS, sum(QUANTITY) AS Total_quantity
 from international_fmcg_sql_assessment
 where COUNTRIES = 'Nigeria' AND YEARS =2019
 group by BRANDS
 order by Total_quantity DESC;
 
 -- FAVORITE BRANDS IN SOUTH-SOUTH REGION OF NIGERIA
 
 select BRANDS,sum(QUANTITY) as Total_quantity
 from international_fmcg_sql_assessment
 where COUNTRIES ='Nigeria' AND REGION LIKE '%southsouth%'
 group by  BRANDS
 order by Total_quantity DESC
 LIMIT 3;
 
 -- BEER CONSUMPTION IN NIGERIA
 
 select BRANDS, sum(QUANTITY) AS Total_beer_Consumption
 from international_fmcg_sql_assessment
 where COUNTRIES = 'Nigeria'
 And BRANDS IN ('Budweiser','trophy','eagle lager','hero', 'castle lite')
 group by BRANDS ;
 
 -- LEVEL OF CONSUMPTION OF BUDWISER IN NIGERIA REGION
 
 select REGION,BRANDS, FORMAT(sum(QUANTITY),0) AS Total_Budweiser_Consumption
 from  international_fmcg_sql_assessment
 where COUNTRIES = 'Nigeria' AND BRANDS = 'Budweiser'
 group by REGION, BRANDS
 order by  Total_Budweiser_Consumption DESC;
 
 select * from international_fmcg_sql_assessment
 where countries='nigeria' and brands='budweiser';
 
 -- BUDWEISER CONSUMPTION IN NIGERIAN REGION IN 2019
 
 select REGION,BRANDS, format(sum(QUANTITY),0) AS Total_Qty_Consumption
 from international_fmcg_sql_assessment
 where COUNTRIES = 'Nigeria' AND BRANDS = 'Budweiser'
 And YEARS = 2019
 group by REGION
 order by Total_Qty_Consumption DESC; 
  
 -- COUNTRY WITH THE HIGHEST BEER CONSUMPTION
 
 select COUNTRIES , sum(QUANTITY) AS Total_beer_Consumption
 from international_fmcg_sql_assessment
 where BRANDS IN ('Budweiser','trophy','eagle lager','hero', 'castle lite')
 group by COUNTRIES
 order by Total_beer_Consumption DESC;
 
 -- HIGHEST SALES PERSONNEL OF BUDWEISER IN SENEGAL
 
 select SALES_REP, sum(QUANTITY) AS Total_Sales
 from international_fmcg_sql_assessment
 where COUNTRIES = 'Senegal' AND BRANDS = 'Budweiser'
 group by SALES_REP
 order by Total_Sales DESC ;
 
 -- COUNTRY WITH THE HIGHEST PROFIT IN THE 4TH QUARTER OF 2019
 
 select COUNTRIES, sum(PROFIT) AS Total_Profit
 from international_fmcg_sql_assessment
 where YEARS = 2019 AND MONTHS IN ('October', 'November','December')
 group by COUNTRIES
 order by  Total_Profit DESC;
 
 







