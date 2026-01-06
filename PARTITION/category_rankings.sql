WITH category_rankings AS(
	SELECT		dates,
				category,	
					SUM(amount) as total_sales
						from transactions
					WHERE STATUS = 'SUCCESS'
				GROUP BY 1, 2
)	SELECT dates,
							category,
							total_sales,
							SUM(total_sales) OVER (PARTITION BY dates
							ORDER BY total_sales desc) as running_queries_ranking
		FROM category_rankings
