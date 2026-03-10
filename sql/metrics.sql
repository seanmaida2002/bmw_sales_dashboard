USE bmw_global_sales;

-- Total Revenue By Year and Region Sorted By Highest Revenue --
SELECT Year, Region, SUM(Revenue_EUR) AS Total_Revenue_EUR
FROM Sales
GROUP BY Year, Region
ORDER BY Total_Revenue_EUR DESC;

-- Total Revenue By Region Sorted By Highest Revenue -- 
SELECT Region, SUM(Revenue_EUR) AS Total_Revenue_EUR
FROM Sales
GROUP BY Region
ORDER BY Total_Revenue_EUR DESC;

-- Total Revenue By Model Sorted By Highest Revenue --
SELECT Model, SUM(Revenue_EUR) AS Total_Revenue_EUR
FROM Sales
GROUP BY Model
ORDER BY Total_Revenue_EUR DESC;

-- Total Revenue By Year and Model Sorted By Highest Revenue --
SELECT Year, Model, SUM(Revenue_EUR) AS Total_Revenue_EUR
FROM Sales
GROUP BY Year, Model
ORDER BY Total_Revenue_EUR DESC;

-- Total Units Sold By Region Sorted By Highest Units Sold--
SELECT Region, SUM(Units_Sold) AS Total_Units_Sold
FROM Sales
GROUP BY Region
ORDER BY Total_Units_Sold DESC;

-- Total Units Sold By Year and Region --
SELECT Year, Region, SUM(Units_Sold) AS Total_Units_Sold
FROM Sales
GROUP BY Year, Region;

-- Average Selling Price by Region
SELECT Region, AVG(Avg_Price_EUR) AS AVG_Price_EUR
FROM Sales
GROUP BY Region
ORDER BY AVG_Price_EUR DESC;

-- Where are vehicles selling for the highest price -- 
SELECT Region, Model, SUM(Revenue_EUR) / SUM(Units_Sold) AS Revenue_Per_Unit_EUR
FROM Sales
GROUP BY Region, Model
ORDER BY Revenue_Per_Unit_EUR DESC;

-- How quickly are electric vehicles growing -- 
SELECT Year, Region, AVG(BEV_Share) AS Avg_BEV_Share
FROM Sales
GROUP BY Year, Region
ORDER BY Year, Region;


