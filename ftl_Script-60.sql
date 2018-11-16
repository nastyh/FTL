select * from dev.Order_Detail
select * from dev.Product_Detail


-------------------------------------------------------

--Summarized total sales, total quantity sold, and total profit (which can be calculated as total sales less cogs) by the week number, store id, product category name. 
--It is important to note that in this business, the week begins on a Tuesday.

select to_char(time_stamp,'Day') from dev.Order_Detail  --returns the day name
select DAYOFWEEK(time_stamp) from dev.Order_Detail -- returns a day's number, Sunday is 1.
select week(time_stamp) from dev.Order_Detail  -- returns a week's number

----------------------------------------------------------
select o.store_id, p.cat_name, sum(o.sales) as Total_Sales, sum(o.units) as Total_Quantity_Sold, sum(o.sales * o.units - o.cogs * o.units) as CoGS from 
dev.Order_Detail o 
join dev.Product_Detail p on o.product = p.product
group by ... 
