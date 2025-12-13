SELECT 
	   COALESCE(gender, 'Unknown'),
	   COUNT(*) as "Total Gender"
	   from tblsleep
	   GROUP BY gender
	   ORDER BY "Total Gender"
	  	DESC;