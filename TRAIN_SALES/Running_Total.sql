SELECT * FROM SALES

SELECT
	"Ship Date" as Ship_Date,
	"Customer Name",
	Category,
	SUM(SALES) OVER
	(PARTITION BY "Customer Name" ORDER BY "Customer Name")
	FROM SALES;


	