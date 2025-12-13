WITH occupation_gender AS(
	SELECT 
	occupation,
	COUNT(CASE WHEN gender = 'Male' THEN 1 END) AS MALE,
	COUNT(CASE WHEN gender = 'Female' THEN 1 END) AS FEMALE
	FROM tblsleep
	group by occupation
)	
	SELECT occupation,
		   male,
		   female,
		   (male + female) as "Total"
		   from occupation_gender;
	