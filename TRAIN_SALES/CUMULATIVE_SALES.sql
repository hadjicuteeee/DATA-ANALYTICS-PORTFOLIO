WITH monthly_sales AS(
	SELECT 
		TO_CHAR("Ship Date", 'YYYY-MM') AS "Monthly Sales",
		SUM(SALES) AS "Total Sales" 
		FROM SALES
		WHERE EXTRACT(YEAR FROM "Ship Date") = 2018
		GROUP BY TO_CHAR("Ship Date", 'YYYY-MM')
) SELECT "Monthly Sales",
		  "Total Sales",
		  SUM("Total Sales") OVER (ORDER BY "Monthly Sales") As Cumulative_Sales
		  from monthly_sales;