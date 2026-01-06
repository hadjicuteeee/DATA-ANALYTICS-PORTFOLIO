WITH previous_transaction AS(
	SELECT u.user_id,
					t.dates,
							COALESCE(t.amount, 0) AS amount,
								ROW_NUMBER() OVER (PARTITION BY u.user_id ORDER BY t.dates) AS RN
			from transactions t
			INNER JOIN users u on t.user_id = u.user_id
)		SELECT 
				pt.user_id,
						pt.dates,
								pt.amount,
		pt.amount - LAG(pt.AMOUNT) OVER 
							(PARTITION BY pt.user_id 
							ORDER BY pt.dates) 
							as diff_prev
				FROM previous_transaction pt
							ORDER BY pt.user_id, pt.dates;
