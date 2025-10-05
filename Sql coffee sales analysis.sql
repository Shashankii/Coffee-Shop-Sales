
SELECT * FROM coffee_shop_sales

SELECT ROUND(SUM(unit_price * transaction_qty)) AS Total_Sales
FROM coffee_shop_sales
WHERE 
MONTH(transaction_date)= 3 -- MARCH Month


SELECT
     MONTH(transaction_date) AS MONTH, -- Number of month
     ROUND(SUM(unit_price * transaction_qty)) AS Total_Sales, -- Total sales column
     (SUM(unit_price * transaction_qty) - LAG(SUM(unit_price * transaction_qty) ,1) -- month sales difference
     OVER(ORDER BY MONTH (transaction_date))) / LAG(SUM(unit_price*transaction_qty), 1) -- Division by pervious month sales
     OVER(ORDER BY MONTH (transaction_date)) * 100 AS mom_percentage_increase
     
     FROM
		coffee_shop_sales
        
        WHERE
            MONTH(transaction_date) IN (4,5) -- for month of april (PM) and May (CM)
            
            GROUP BY 
                   MONTH(transaction_date)
                   
            ORDER BY 
                   MONTH(transaction_date);
     
 SELECT COUNT(transaction_id) AS Total_Orders
 FROM coffee_shop_sales
 WHERE
 MONTH(transaction_date)= 5 -- MAY MONTH


SELECT 
    MONTH(transaction_date) AS month,
    ROUND(COUNT(transaction_id)) AS total_orders,
    (COUNT(transaction_id) - LAG(COUNT(transaction_id), 1) 
    OVER (ORDER BY MONTH(transaction_date))) / LAG(COUNT(transaction_id), 1) 
    OVER (ORDER BY MONTH(transaction_date)) * 100 AS mom_increase_percentage
FROM 
    coffee_shop_sales
WHERE 
    MONTH(transaction_date) IN (4, 5) -- for April and May
GROUP BY 
    MONTH(transaction_date)
ORDER BY 
    MONTH(transaction_date);


SELECT SUM(transaction_qty) AS Total_Quantity_Sold
FROM coffee_shop_sales
WHERE
MONTH(transaction_date) = 6 -- June Month
     
SELECT 
    MONTH(transaction_date) AS month,
    ROUND(SUM(transaction_qty)) AS total_quantity_sold,
    (SUM(transaction_qty) - LAG(SUM(transaction_qty), 1) 
    OVER (ORDER BY MONTH(transaction_date))) / LAG(SUM(transaction_qty), 1) 
    OVER (ORDER BY MONTH(transaction_date)) * 100 AS mom_increase_percentage
FROM 
    coffee_shop_sales
WHERE 
    MONTH(transaction_date) IN (4, 5)   -- for April and May
GROUP BY 
    MONTH(transaction_date)
ORDER BY 
    MONTH(transaction_date);



SELECT 
CONCAT(ROUND(SUM(unit_price * transaction_qty) / 1000 , 1), 'K') AS Total_Sales,
CONCAT(ROUND(SUM(transaction_qty) / 1000, 1), 'K') AS Total_Qty_Sold,
CONCAT(ROUND(COUNT(transaction_id) /1000,1), 'K') AS Total_Orders
FROM coffee_shop_sales
WHERE 
     transaction_date = '2023-03-27'
     
     
     -- WEEKENDS - SAT SUN
     -- WEEKDAYS - MON - FRI
     
     SUN = 1
     MON = 2
     
     
     SAT = 7
     
     SELECT 
     CASE WHEN DAYOFWEEK(transaction_date) IN (1,7) THEN 'Weekends'
     ELSE 'Weekdays'
     END AS day_type,
     CONCAT(ROUND(SUM(unit_price*transaction_qty) /1000 , 1), 'K') AS Total_sales
     FROM coffee_shop_sales
     WHERE MONTH(transaction_date) = 2 -- FEB MONTH
     GROUP BY
          CASE WHEN DAYOFWEEK(transaction_date) IN (1,7) THEN 'Weekends'
		  ELSE 'Weekdays'
     END
     
     SELECT 
          store_location,
          CONCAT(ROUND(SUM(unit_price*transaction_qty) / 1000 , 2) , 'K') AS Total_sales
    FROM coffee_shop_sales
    WHERE MONTH(transaction_date) = 6 -- May
    GROUP BY store_location
    ORDER BY SUM(unit_price*transaction_qty) DESC    
    
     
SELECT CONCAT(ROUND(AVG(total_sales)/1000 , 1), 'K') AS average_sales
FROM (
    SELECT 
        SUM(unit_price * transaction_qty) AS total_sales
    FROM 
        coffee_shop_sales
	WHERE 
        MONTH(transaction_date) = 5  -- Filter for May
    GROUP BY 
        transaction_date
) AS internal_query;


SELECT 
     DAY(transaction_date) AS day_of_month,
     SUM(transaction_qty * unit_price) AS total_sales
 FROM coffee_shop_sales
 WHERE MONTH(transaction_date) = 5
 GROUP BY DAY(transaction_date)
 ORDER BY DAY(transaction_date)
 
 
 THAN “BELOW AVERAGE”
SELECT 
    day_of_month,
    CASE 
        WHEN total_sales > avg_sales THEN 'Above Average'
        WHEN total_sales < avg_sales THEN 'Below Average'
        ELSE 'Average'
    END AS sales_status,
    total_sales
FROM (
    SELECT 
        DAY(transaction_date) AS day_of_month,
        SUM(unit_price * transaction_qty) AS total_sales,
        AVG(SUM(unit_price * transaction_qty)) OVER () AS avg_sales
    FROM 
        coffee_shop_sales
    WHERE 
        MONTH(transaction_date) = 5  -- Filter for May
    GROUP BY 
        DAY(transaction_date)
) AS sales_data
ORDER BY 
    day_of_month;


SELECT
     product_category,
     CONCAT(ROUND(SUM(unit_price * transaction_qty) / 1000, 1), 'K') AS total_sales
 FROM coffee_shop_sales
 WHERE MONTH(transaction_date) = 5
 GROUP BY product_category
 ORDER BY total_sales DESC;
 
 SELECT
     product_type,
     CONCAT(ROUND(SUM(unit_price * transaction_qty) / 1000, 1), 'K') AS total_sales
 FROM coffee_shop_sales
 WHERE MONTH(transaction_date) = 5 AND product_category = 'Coffee'
 GROUP BY product_type
 ORDER BY SUM(unit_price * transaction_qty) DESC
 LIMIT 10;
 
 
 
 
 
  SELECT
     SUM(unit_price * transaction_qty)  AS total_sales,
     SUM(transaction_qty) AS Total_Qty_Sold,
     COUNT(transaction_id) AS Total_Orders
     FROM coffee_shop_sales
     WHERE MONTH(transaction_date) = 5 -- may month
     AND DAYOFWEEK(transaction_date) = 1 -- Monday
     AND HOUR(transaction_time) = 14 -- Hour No 14
     
     SELECT 
          HOUR(transaction_time) AS Hour_of_day,
          SUM(transaction_qty *unit_price) AS Total_Sales
   FROM coffee_shop_sales
   WHERE MONTH(transaction_date) = 5
   GROUP BY HOUR(transaction_time)
   ORDER BY HOUR(transaction_time);
   
   SELECT 
    CASE 
        WHEN DAYOFWEEK(transaction_date) = 2 THEN 'Monday'
        WHEN DAYOFWEEK(transaction_date) = 3 THEN 'Tuesday'
        WHEN DAYOFWEEK(transaction_date) = 4 THEN 'Wednesday'
        WHEN DAYOFWEEK(transaction_date) = 5 THEN 'Thursday'
        WHEN DAYOFWEEK(transaction_date) = 6 THEN 'Friday'
        WHEN DAYOFWEEK(transaction_date) = 7 THEN 'Saturday'
        ELSE 'Sunday'
    END AS Day_of_Week,
    CONCAT(ROUND(SUM(unit_price * transaction_qty)/ 1000 , 1), 'K') AS Total_Sales
FROM 
    coffee_shop_sales
WHERE 
    MONTH(transaction_date) = 5 -- Filter for May (month number 5)
GROUP BY 
    CASE 
        WHEN DAYOFWEEK(transaction_date) = 2 THEN 'Monday'
        WHEN DAYOFWEEK(transaction_date) = 3 THEN 'Tuesday'
        WHEN DAYOFWEEK(transaction_date) = 4 THEN 'Wednesday'
        WHEN DAYOFWEEK(transaction_date) = 5 THEN 'Thursday'
        WHEN DAYOFWEEK(transaction_date) = 6 THEN 'Friday'
        WHEN DAYOFWEEK(transaction_date) = 7 THEN 'Saturday'
        ELSE 'Sunday'
    END;













