WITH rankings AS(
	SELECT category as "Category",
							product as "Product",
									amount as "Amount"
										FROM TRANSACTIONS
) 		SELECT 
				"Category",
				"Product",
				"Amount",
		ROW_NUMBER() OVER (PARTITION BY "Category"
							ORDER BY "Amount" DESC)
							as rank
			FROM rankings;
