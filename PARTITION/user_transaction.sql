WITH user_transaction AS(
	SELECT u.user_id,
					dates,
						first_name,
							last_name,
								COALESCE(amount, 0) AS amount
						FROM transactions t 
					INNER JOIN users u on t.user_id = u.user_id
				WHERE t.status = 'SUCCESS'
)	SELECT ut.user_id,
	ut.dates,
	CONCAT(ut.first_name, ' ' ,ut.last_name) as Customer_Info,
	ut.amount,
	SUM(ut.amount) OVER (PARTITION BY ut.user_id
						ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) 
						as running_total
	FROM user_transaction ut;
