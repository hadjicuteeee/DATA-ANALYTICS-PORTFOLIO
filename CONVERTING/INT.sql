DROP TABLE IF EXISTS string_numbers;

CREATE TABLE string_numbers(
id  SERIAL PRIMARY KEY,
num_text VARCHAR(10),
name VARCHAR(55)
);

INSERT INTO string_numbers (num_text, name) VALUES
('10', 'olivia'),
('25', 'rodrigo'),
('7', 'maliken'),
('100', 'amunra'),
('50', 'jain');

--USING CAST
SELECT num_text, CAST(num_text AS INTEGER)
FROM string_numbers;


--USING THE SHORTCUT 
SELECT num_text, num_text::INTEGER 
FROM string_numbers;

--STRING TO INT TO ABLE ADD THE NUM_TEXT	
SELECT
	num_text,
	(num_text::INTEGER + num_text::INTEGER) AS double_numb
	from string_numbers;

SELECT
	num_text,
	num_text::INTEGER
	from string_numbers
	WHERE num_text::INTEGER > 20;


SELECT 
	num_text,
	num_text::INTEGER,
	CASE
	WHEN num_text::INTEGER > 50 THEN 'High'
	WHEN num_text::INTEGER >= 20 AND num_text::INTEGER <= 50 THEN 'Medium'
	ELSE 'Low'
	END AS label
from string_numbers;


SELECT num_text,
	   (num_text::INTEGER + num_text::INTEGER) as Double_Num,
	   CASE 
	   WHEN (num_text::INTEGER + num_text::INTEGER) > 100 THEN 'Big'
	   WHEN (num_text::INTEGER + num_text::INTEGER) >= 50 THEN 'Medium'
	   ELSE 'Low'
	   END AS label
	   FROM string_numbers;

SELECT num_text, num_text::NUMERIC 
from string_numbers;

SELECT CAST(num_text AS NUMERIC) 
from string_numbers;