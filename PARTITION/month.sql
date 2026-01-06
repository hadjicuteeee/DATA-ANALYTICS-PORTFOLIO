SELECT 	TO_CHAR(month, 'YYYY-MM') as month,
						"user_id" as user_id,
											 user_total,
	 												RANK() OVER(PARTITION BY	
								 					month ORDER BY user_total DESC) RANKING,
											 role
										from
							(SELECT 
								dates as month,
									user_id as "user_id",
										SUM(amount) as user_total,
												role
										FROM TRANSACTIONS
												JOIN USERS USING (USER_ID)
														GROUP BY 1, 2, 4
												);
