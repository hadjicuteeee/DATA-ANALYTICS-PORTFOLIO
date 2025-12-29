SELECT
    city,
    SUM(sales) OVER (
        PARTITION BY city
        ORDER BY "Ship Date"
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_query
FROM sales;


SELECT "Customer Name",
		sales,
		NTILE(4) OVER (ORDER BY sales DESC) as grouping
		FROM 
		(
SELECT
  "Customer Name",
  sales
FROM SALES
ORDER BY SALES DESC
LIMIT 8
) AS TOP_SALES;


