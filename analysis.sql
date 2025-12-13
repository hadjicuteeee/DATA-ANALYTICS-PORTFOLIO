
WITH activity_grouping AS (
	SELECT
	occupation as "Occupation",
	gender as "Gender",
	CASE
			WHEN "Physical Activity Level" < 40 THEN 'Low' 
			WHEN "Physical Activity Level"  BETWEEN 40 AND 69 THEN 'Moderate'
			WHEN "Physical Activity Level" >= 70 THEN 'High' 
		END AS phyiscal_activity
 	FROM tblsleep
	GROUP BY Occupation, gender, phyiscal_activity,
	CASE
			WHEN "Physical Activity Level" < 40 THEN 'Low' 
			WHEN "Physical Activity Level"  BETWEEN 40 AND 69 THEN 'Moderate'
			WHEN "Physical Activity Level" >= 70 THEN 'High' 
		END
),

stress_sleep_analysis AS(
	SELECT 
		ROUND(AVG("Stress Level"), 2) as stress_level,
		ROUND(AVG("Sleep Duration"), 2) as Sleep_Duration,
		ROUND(AVG("Quality of Sleep"), 2) as Quality_of_Sleep,
		ROUND(AVG("Daily Steps"), 2) as Daily_Steps
	FROM tblsleep		
),

health_risk_flag AS(
	SELECT
	occupation,
	gender,
	COUNT(*) FILTER(WHERE "Stress Level" >= 8 
			 OR "BMI Category" = 'Obese'
			 OR "Sleep Duration" < 6) AS high_risk_count,
		 COUNT(*) AS total_count
	FROM tblsleep
	group by occupation, gender
)
SELECT ag.*, ssa.*, hrf.high_risk_count, total_count
FROM activity_grouping ag
JOIN health_risk_flag hrf
	ON ag."Occupation" = hrf.occupation
	AND ag."Gender" = hrf.gender
	CROSS JOIN stress_sleep_analysis ssa;








