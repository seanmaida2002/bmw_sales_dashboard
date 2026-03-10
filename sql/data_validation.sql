USE bmw_global_sales;
-- get first 10 values from sales table --
SELECT * FROM Sales
LIMIT 10;

-- Check to see if there are any NULL values
SELECT * FROM Sales
WHERE YEAR IS NULL
	OR Month IS NULL
    OR Region IS NULL
    OR Model IS NULL
    OR Units_Sold IS NULL
    OR Avg_Price_EUR IS NULL
    OR Revenue_EUR IS NULL
    OR BEV_Share IS NULL
    OR Premium_Share IS NULL
    OR GDP_Growth IS NULL
    OR Fuel_Price_Index IS NULL;
# No NULL values

-- Check for duplicates -- 
SELECT Year, Month, Region, Model, COUNT(*) AS Duplicates
FROM Sales
GROUP BY Year, Month, Model, Region
HAVING COUNT(*) > 1;
# No Duplicates

-- Check for distinct values
SELECT DISTINCT Model FROM Sales;
SELECT DISTINCT Region FROM Sales;
SELECT DISTINCT Year FROM Sales;
SELECT DISTINCT Month FROM Sales;
