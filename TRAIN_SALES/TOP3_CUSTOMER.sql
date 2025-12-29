WITH person AS(
	SELECT "Customer Name" as Customer_Name,
	segment,
	country, 
	city,
	SUM(sales) as total_spent
	from sales
	GROUP BY Customer_Name, segment, country, city
)	SELECT Customer_Name,
		   segment as "Segment",
		   country as "Country",
		   city as "City",
		   total_spent as "Total_Spent",
		   ROW_NUMBER() OVER(ORDER BY total_spent DESC)  as "Total_Ranking"
		   FROM person
		   limit 3;
