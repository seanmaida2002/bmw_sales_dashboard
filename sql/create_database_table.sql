-- create database for bmw global sales data --
CREATE DATABASE IF NOT EXISTS bmw_global_sales;

-- create sales table for 2018-2025 --
USE bmw_global_sales;
CREATE TABLE Sales (
    Year INT,
    Month INT, 
    Region VARCHAR(25),
    Model VARCHAR(25),
    Units_Sold INT,
    Avg_Price_EUR DECIMAL(12, 2),
    Revenue_EUR DECIMAL(15,2),
    BEV_Share DECIMAL(4, 3),
    Premium_Share DECIMAL(4, 2),
    GDP_Growth DECIMAL (4, 2),
    Fuel_Price_Index DECIMAL(5, 2),
    PRIMARY KEY(Year, Month, Region, Model)
);

-- get first 10 values from sales table --
USE bmw_global_sales;
SELECT * FROM Sales
LIMIT 10;
