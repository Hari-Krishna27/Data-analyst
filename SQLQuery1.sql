select * From pizza_sales;

Select sum(total_price) as Total_Revenue from pizza_sales;


Select sum (total_price) / count(distinct order_id) as Average_order_value from pizza_sales;

Select Sum(quantity) as Total_prize_sold from pizza_sales;

Select Count(distinct order_id) as Total_order from pizza_sales;

Select CAST(cast(sum(quantity) as Decimal(10,2))/Cast(Count(distinct order_id) as decimal(10,2)) as Decimal(10,2)) as Average_Per_order from pizza_sales

Select DATENAME(DW, order_date) as order_day , Count(Distinct order_id) as Total_orders
From pizza_sales
Group By DATENAME(DW, order_date);

Select DATENAME(MONTH, order_date) as Month_Name , Count(Distinct order_id) as Total_orders
From pizza_sales
Group By DATENAME(MONTH, order_date)
Order By Total_orders DESC;

Select pizza_category, SUM(total_price) as Total_Sales,SUM(total_price) *100 / (Select sum(total_price) from pizza_sales Where Month(order_date)=1) as Percentage_of_sales
From pizza_sales
Where Month(order_date)=1
Group By pizza_category;


Select pizza_size, CAST(SUM(total_price) as decimal(10,2)) as Total_Sales,CAST(SUM(total_price) *100 / (Select sum(total_price) from pizza_sales) as DECIMAL(10,2)) as Percentage_of_sales
From pizza_sales
Group By pizza_size
Order By Percentage_of_sales DESC;

Select pizza_category, SUM(quantity) as Total_Quantity_sold
From pizza_sales
Group by pizza_category
Order By Total_Quantity_sold DESC;

Select Top 5 Pizza_name, Sum(total_price) as Total_Revenue
From pizza_sales
Group by pizza_name
Order By Total_Revenue DESC;


Select Top 5 Pizza_name, Sum(total_price) as Total_Revenue
From pizza_sales
Group by pizza_name
Order By Total_Revenue ASC;

Select Top 5 Pizza_name, Sum(quantity) as total_pizza_sold
From pizza_sales
Group by pizza_name
Order By total_pizza_sold desc

Select Top 5 Pizza_name, Sum(quantity) as total_pizza_sold
From pizza_sales
Group by pizza_name
Order By total_pizza_sold Asc

Select Top 5 pizza_name, Count(order_id) as total_orders
From pizza_sales
Group by pizza_name
order by total_orders desc

Select Top 5 pizza_name, Count(order_id) as total_orders
From pizza_sales
Group by pizza_name
order by total_orders asc