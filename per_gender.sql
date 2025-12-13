SELECT gender,
		"Sleep Disorder" as sleep_disorder,
		COUNT(*) as total
		FROM tblsleep
		GROUP BY gender, "Sleep Disorder"