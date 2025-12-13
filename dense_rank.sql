SELECT 
    "Sleep Disorder",
    Sleep_Disorder,
    DENSE_RANK() OVER (ORDER BY Sleep_Disorder DESC) AS RANKING
FROM
(
    SELECT 
        "Sleep Disorder",
        COUNT(*) as Sleep_Disorder
    FROM tblsleep
    GROUP BY "Sleep Disorder"
) AS t; 

SELECT * FROM TBLSLEEP
