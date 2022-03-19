Select *
from [Total Countries by Population]..['Countries by Population$']
order by 4

Select * from [Total Countries by Population]..['Countries by Population$']
SELECT name, MAX(population) as maxPOP FROM [Total Countries by Population]..['Countries by Population$']
Group by name
order by maxPop desc

select name, population from [Total Countries by Population]..['Countries by Population$']
--group by population
select top 2 * from [Total Countries by Population]..['Countries by Population$']

SELECT AVG(population) FROM [Total Countries by Population]..['Countries by Population$']

--Query to determine the likelihood of population increasing using the fertility rate and the country mostly likely to have an increase in population
SELECT name,fertility_rate,
    CASE 
    WHEN fertility_rate <2.1 THEN 'population will decrease'
    ELSE 'population will increase'
    END as probability
    
FROM [Total Countries by Population]..['Countries by Population$']
GROUP BY name,fertility_rate
order by fertility_rate desc

SELECT COUNT(*),
    CASE 
    WHEN fertility_rate<2.1 THEN 'population will decrease'
    ELSE 'population will increase'
    END as probability
    
FROM [Total Countries by Population]..['Countries by Population$']
GROUP BY name,fertility_rate;

--selecting the top countries with high net_migration 
SELECT top 5 name,net_migrants,percent_one_year_change FROM [Total Countries by Population]..['Countries by Population$']
order by net_migrants desc

SELECT name FROM [Total Countries by Population]..['Countries by Population$']
WHERE population > 30000000 AND fertility_rate > 2.1;

SELECT name,fertility_rate,
    CASE 
    WHEN fertility_rate <2.1 THEN 'population will decrease'
    ELSE 'population will increase'
    END as probability
    
FROM [Total Countries by Population]..['Countries by Population$']
GROUP BY name,fertility_rate
order by fertility_rate desc

select * from [Total Countries by Population]..['Countries by Population$']

