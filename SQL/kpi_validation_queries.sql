use financial_data

select * from dbo.finance

--KPI's Analysis 
--Total Revenue 
select sum(revenue) as [Total Revenue] from finance

--Total Cost
select sum(cost) as [Total Cost] from finance

--Total Profit
select *,(revenue)-(cost)/(revenue) as [Profit] from finance 

--Top 3 Revenue in North by ROI 
select top 3 TransactionID,Department,Region,TransactionDate,Revenue,Cost,
(Revenue)-(Cost) as [Profit],(Revenue-Cost)/Revenue * 100 as [Roi Percentage]
from finance
where Region = 'North'
order by [Roi Percentage] desc 

--Top 3 Revenue in South by ROI 
select top 3 TransactionID,Department,Region,TransactionDate,Revenue,Cost,
(Revenue)-(Cost) as [Profit],(Revenue-Cost)/Revenue * 100 as [Roi Percentage]
from finance
where Region = 'South'
order by [Roi Percentage] desc 

--Top 3 Revenue in East by ROI 
select top 3 TransactionID,Department,Region,TransactionDate,Revenue,Cost,
(Revenue)-(Cost) as [Profit],(Revenue-Cost)/Revenue * 100 as [Roi Percentage]
from finance
where Region = 'East'
order by [Roi Percentage] desc 

--Top 3 Revenue in West by ROI 
select top 3 TransactionID,Department,Region,TransactionDate,Revenue,Cost,
(Revenue)-(Cost) as [Profit],(Revenue-Cost)/Revenue * 100 as [Roi Percentage]
from finance
where Region = 'West'
order by [Roi Percentage] desc 

