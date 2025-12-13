CREATE TABLE tblsleep(
"Person Id" SERIAL PRIMARY KEY,
Gender VARCHAR(50),
Age INT,
Occupation VARCHAR(50),
"Sleep Duration" DECIMAL(10, 2),
"Quality of Sleep" INT,
"Physical Activity Level" INT,
"Stress Level" INT,
"BMI Category" VARCHAR(50),
"Blood Pressure" VARCHAR(50),
"Heart Rate" INT,
"Daily Steps" INT,
"Sleep Disorder" VARCHAR(50)
);

SELECT * FROM tblsleep
