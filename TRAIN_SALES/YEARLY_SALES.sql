SELECT 
	SUM(sales)as "2015 Sales"
	FROM SALES
	WHERE EXTRACT(YEAR FROM "Ship Date") = 2015;
	
SELECT
	SUM(sales) as "2016 Sales"
	FROM sales
	WHERE EXTRACT(YEAR FROM "Ship Date") = 2016;

SELECT
	SUM(sales) as "2017 Sales"
	FROM sales
	WHERE EXTRACT(YEAR FROM "Ship Date") = 2017;

SELECT 
	SUM(sales)as "2018 Sales"
	FROM SALES
	WHERE EXTRACT(YEAR FROM "Ship Date") = 2018;
	
SELECT 
	EXTRACT(YEAR FROM "Ship Date") as "Year",
	COUNT(*) AS YEARLY
	FROM SALES
	GROUP BY "Year"

