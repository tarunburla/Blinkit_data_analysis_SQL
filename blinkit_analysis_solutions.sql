/* =======================================================
   📘 Blinkit (Zepto) SQL Query Book
   Author : Tarun Burla
   Date   : 2025-09-26
   Purpose: Retail Data Analysis (Granular + KPI)
   ======================================================= */

------------------------------------------------------------
-- SECTION 1: Data Overview
------------------------------------------------------------

-- 1.1 View all records
SELECT * 
FROM BLINKIT_DATA;

-- 1.2 Count total rows
SELECT COUNT(*) AS total_rows
FROM BLINKIT_DATA;


------------------------------------------------------------
-- SECTION 2: Data Cleaning
------------------------------------------------------------

-- 2.1 Standardize Item_Fat_Content field
UPDATE BLINKIT_DATA
SET Item_Fat_Content = 
    CASE
        WHEN Item_Fat_Content IN ('LF','low fat') THEN 'Low Fat'
        WHEN Item_Fat_Content = 'reg' THEN 'Regular'
        ELSE Item_Fat_Content
    END;

-- 2.2 Check distinct values after cleaning
SELECT DISTINCT(Item_Fat_Content)
FROM BLINKIT_DATA;


------------------------------------------------------------
-- SECTION 3: KPI Calculations
------------------------------------------------------------

-- 3.1 Total Sales in Millions
SELECT CAST(SUM(Sales)/1000000 AS DECIMAL(10,2)) AS total_sales_millions
FROM BLINKIT_DATA;

-- 3.2 Average Sales
SELECT CAST(AVG(Sales) AS DECIMAL(10,2)) AS avg_sales
FROM BLINKIT_DATA;


------------------------------------------------------------
-- SECTION 4: Granular Analysis
------------------------------------------------------------

-- 4.1 Total Sales by Fat Content
SELECT Item_Fat_Content,
       CAST(SUM(Sales) AS DECIMAL(10,2)) AS sum_sales,
       CAST(AVG(Sales) AS DECIMAL(10,2)) AS avg_sales,
       CAST(AVG(Rating) AS DECIMAL(10,2)) AS avg_rating,
       COUNT(*) AS no_of_items
FROM BLINKIT_DATA
GROUP BY Item_Fat_Content
ORDER BY SUM(Sales) DESC;


-- 4.2 Total Sales by Item Type (Top 5 Highest)
SELECT TOP 5 Item_Type,
       CAST(SUM(Sales) AS DECIMAL(10,2)) AS sum_sales,
       CAST(AVG(Sales) AS DECIMAL(10,2)) AS avg_sales,
       CAST(AVG(Rating) AS DECIMAL(10,2)) AS avg_rating,
       COUNT(*) AS no_of_items
FROM BLINKIT_DATA
GROUP BY Item_Type
ORDER BY SUM(Sales) DESC;


-- 4.3 Least 5 Item Sales
SELECT TOP 5 Item_Type,
       CAST(SUM(Sales) AS DECIMAL(10,2)) AS sum_sales,
       CAST(AVG(Sales) AS DECIMAL(10,2)) AS avg_sales,
       CAST(AVG(Rating) AS DECIMAL(10,2)) AS avg_rating,
       COUNT(*) AS no_of_items
FROM BLINKIT_DATA
GROUP BY Item_Type
ORDER BY SUM(Sales) ASC;


-- 4.4 Fat Content by Outlet (Pivot Analysis)
SELECT Outlet_Location_Type,
       ISNULL([Low Fat], 0) AS Low_Fat,
       ISNULL([Regular], 0) AS Regular
FROM 
(
    SELECT Outlet_Location_Type, 
           Item_Fat_Content,
           CAST(SUM(Sales) AS DECIMAL(10,2)) AS Sales
    FROM BLINKIT_DATA
    GROUP BY Outlet_Location_Type, Item_Fat_Content
) AS source_table
PIVOT
(
    SUM(Sales)
    FOR Item_Fat_Content IN ([Low Fat], [Regular])
) AS pivotTable
ORDER BY Outlet_Location_Type;


-- 4.5 Total Sales by Outlet Establishment Year
SELECT Outlet_Establishment_Year,
       CAST(SUM(Sales) AS DECIMAL(10,2)) AS sum_sales
FROM BLINKIT_DATA
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year;


-- 4.6 Percentage of Sales by Outlet Size
SELECT Outlet_Size,
       CAST(SUM(Sales) AS DECIMAL(10,2)) AS Total_sales,
       CAST(SUM(Sales) * 100.0 / SUM(SUM(Sales)) OVER () AS DECIMAL(10,2)) AS sales_percentage
FROM BLINKIT_DATA
GROUP BY Outlet_Size
ORDER BY Total_sales DESC;


-- 4.7 Sales by Outlet Location Type
SELECT Outlet_Location_Type,
       CAST(SUM(Sales) AS DECIMAL(10,2)) AS Total_sales,
       CAST(AVG(Sales) AS DECIMAL(10,1)) AS avg_sales,
       COUNT(*) AS no_of_items,
       CAST(AVG(Rating) AS DECIMAL(10,2)) AS avg_rating
FROM BLINKIT_DATA
GROUP BY Outlet_Location_Type
ORDER BY Total_sales DESC;


/* =======================================================
   END OF QUERY BOOK
   ======================================================= */
