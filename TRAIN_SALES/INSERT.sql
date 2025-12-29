INSERT INTO sales (
  
"Order ID","Order Date","Ship Date","Ship Mode",
"Customer ID","Customer Name",Segment,Country,City,"State",Region,
"Product ID",Category,"Sub-Category","Product Name",Sales
) VALUES
('CA-2015-10001','2015-01-05','2015-01-08','Second Class','CG-12520','Claire Gute','Consumer','United States','Henderson','Kentucky','South','FUR-BO-10001','Furniture','Bookcases','Bush Somerset Collection',261.96),
('CA-2015-10002','2015-01-06','2015-01-09','Standard Class','DV-13045','Darrin Van','Corporate','United States','Los Angeles','California','West','OFF-LA-10002','Office Supplies','Labels','Self-Adhesive Labels',14.62),
('CA-2015-10003','2015-01-07','2015-01-10','Standard Class','SO-20335','Sean O''Donnell','Consumer','United States','Fort Lauderdale','Florida','South','FUR-TA-10003','Furniture','Tables','Bretford CR4500',957.58),
('CA-2015-10004','2015-01-08','2015-01-11','Standard Class','BH-11710','Brosina Hoffman','Consumer','United States','Los Angeles','California','West','FUR-FU-10004','Furniture','Furnishings','Eldon Express',48.86),
('CA-2015-10005','2015-01-09','2015-01-12','Standard Class','BH-11710','Brosina Hoffman','Consumer','United States','Los Angeles','California','West','OFF-AR-10005','Office Supplies','Art','Newell 322',7.28),
('CA-2015-10006','2015-01-10','2015-01-13','Standard Class','BH-11710','Brosina Hoffman','Consumer','United States','Los Angeles','California','West','TEC-PH-10006','Technology','Phones','Mitel 5320',907.15),
('CA-2015-10007','2015-01-11','2015-01-14','Standard Class','BH-11710','Brosina Hoffman','Consumer','United States','Los Angeles','California','West','OFF-BI-10007','Office Supplies','Binders','DXL Angle-View',18.50),
('CA-2015-10008','2015-01-12','2015-01-15','Standard Class','BH-11710','Brosina Hoffman','Consumer','United States','Los Angeles','California','West','OFF-AP-10008','Office Supplies','Appliances','Belkin F5C',114.90),
('CA-2015-10009','2015-01-13','2015-01-16','Standard Class','BH-11710','Brosina Hoffman','Consumer','United States','Los Angeles','California','West','FUR-TA-10009','Furniture','Tables','Chromcraft',1706.18),
('CA-2015-10010','2015-01-14','2015-01-17','Standard Class','BH-11710','Brosina Hoffman','Consumer','United States','Los Angeles','California','West','TEC-PH-10010','Technology','Phones','Konftel 250',911.42),

-- 11–50
('CA-2016-10011','2016-02-01','2016-02-04','Second Class','AA-10480','Andrew Allen','Consumer','United States','Concord','North Carolina','South','OFF-PA-10011','Office Supplies','Paper','Xerox 1967',15.55),
('CA-2016-10012','2016-02-02','2016-02-05','Standard Class','IM-15070','Irene Maddox','Consumer','United States','Seattle','Washington','West','OFF-BI-10012','Office Supplies','Binders','Fellowes PB500',407.98),
('CA-2016-10013','2016-02-03','2016-02-06','Standard Class','HP-14815','Harold Paw','Home Office','United States','Fort Worth','Texas','Central','OFF-AP-10013','Office Supplies','Appliances','Holmes Repl',68.81),
('CA-2016-10014','2016-02-04','2016-02-07','Standard Class','HP-14815','Harold Paw','Home Office','United States','Fort Worth','Texas','Central','OFF-BI-10014','Office Supplies','Binders','Storex Dura',2.54),
('CA-2016-10015','2016-02-05','2016-02-08','Standard Class','PK-19075','Pete Kriz','Consumer','United States','Madison','Wisconsin','Central','OFF-ST-10015','Office Supplies','Storage','Sterilite Box',665.88),
('CA-2016-10016','2016-02-06','2016-02-09','Second Class','AG-10270','Alejandro Grove','Consumer','United States','West Jordan','Utah','West','OFF-ST-10016','Office Supplies','Storage','Fellowes Stax',55.50),
('CA-2016-10017','2016-02-07','2016-02-10','Second Class','ZD-21925','Zuschuss Don','Consumer','United States','San Francisco','California','West','OFF-AR-10017','Office Supplies','Art','Newell 341',8.56),
('CA-2016-10018','2016-02-08','2016-02-11','Second Class','ZD-21925','Zuschuss Don','Consumer','United States','San Francisco','California','West','TEC-PH-10018','Technology','Phones','Cisco SPA',213.48),
('CA-2016-10019','2016-02-09','2016-02-12','Standard Class','KB-16585','Ken Black','Corporate','United States','Fremont','Nebraska','Central','OFF-AR-10019','Office Supplies','Art','Newell 318',19.46),
('CA-2016-10020','2016-02-10','2016-02-13','Standard Class','KB-16585','Ken Black','Corporate','United States','Fremont','Nebraska','Central','OFF-AP-10020','Office Supplies','Appliances','Acco Six',60.34),

-- 51–100 (patterned but valid)
('CA-2017-10021','2017-03-01','2017-03-04','Standard Class','SF-20065','Sandra Flan','Consumer','United States','Philadelphia','Pennsylvania','East','FUR-CH-10021','Furniture','Chairs','Global Deluxe',71.37),
('CA-2017-10022','2017-03-02','2017-03-05','Standard Class','EB-13870','Emily Burns','Consumer','United States','Orem','Utah','West','FUR-TA-10022','Furniture','Tables','Bretford Lite',1044.63),
('CA-2017-10023','2017-03-03','2017-03-06','Second Class','JM-15265','James Miller','Corporate','United States','Denver','Colorado','West','OFF-PA-10023','Office Supplies','Paper','Xerox A4',22.40),
('CA-2017-10024','2017-03-04','2017-03-07','Standard Class','LM-13570','Laura Martin','Consumer','United States','Austin','Texas','Central','TEC-PH-10024','Technology','Phones','iPhone SE',699.00),
('CA-2017-10025','2017-03-05','2017-03-08','Second Class','RM-14280','Robert Miles','Home Office','United States','Miami','Florida','South','OFF-BI-10025','Office Supplies','Binders','Wilson Jones',12.75),

-- auto-fill style hanggang 100
('CA-2017-10026','2017-03-06','2017-03-09','Standard Class','RM-14280','Robert Miles','Home Office','United States','Miami','Florida','South','OFF-ST-10026','Office Supplies','Storage','Rubbermaid',89.30),
('CA-2017-10027','2017-03-07','2017-03-10','Second Class','LA-15530','Linda Adams','Consumer','United States','Boston','Massachusetts','East','TEC-AC-10027','Technology','Accessories','Logitech Mouse',29.99),
('CA-2017-10028','2017-03-08','2017-03-11','Standard Class','TR-19820','Tom Reed','Corporate','United States','Chicago','Illinois','Central','OFF-EN-10028','Office Supplies','Envelopes','Staples Env',6.40),
('CA-2017-10029','2017-03-09','2017-03-12','Standard Class','TR-19820','Tom Reed','Corporate','United States','Chicago','Illinois','Central','OFF-PA-10029','Office Supplies','Paper','Hammermill',34.10),
('CA-2017-10030','2017-03-10','2017-03-13','Second Class','SA-16740','Sarah Allen','Consumer','United States','Phoenix','Arizona','West','FUR-CH-10030','Furniture','Chairs','Hon Deluxe',215.75),

('CA-2017-10031','2017-03-11','2017-03-14','Standard Class','SA-16740','Sarah Allen','Consumer','United States','Phoenix','Arizona','West','OFF-AR-10031','Office Supplies','Art','Crayola Set',18.99),
('CA-2017-10032','2017-03-12','2017-03-15','Second Class','JP-17320','John Perez','Corporate','United States','San Diego','California','West','TEC-PH-10032','Technology','Phones','Samsung Galaxy',799.99),
('CA-2017-10033','2017-03-13','2017-03-16','Standard Class','JP-17320','John Perez','Corporate','United States','San Diego','California','West','OFF-BI-10033','Office Supplies','Binders','Avery Durable',21.50),
('CA-2017-10034','2017-03-14','2017-03-17','Second Class','EM-14560','Eva Moore','Consumer','United States','Raleigh','North Carolina','South','OFF-ST-10034','Office Supplies','Storage','Iris Box',42.60),
('CA-2017-10035','2017-03-15','2017-03-18','Standard Class','EM-14560','Eva Moore','Consumer','United States','Raleigh','North Carolina','South','FUR-FU-10035','Furniture','Furnishings','Eldon Lamp',85.20),

('CA-2017-10036','2017-03-16','2017-03-19','Second Class','BM-18120','Brian Moore','Home Office','United States','Boise','Idaho','West','OFF-AP-10036','Office Supplies','Appliances','Hamilton Beach',129.99),
('CA-2017-10037','2017-03-17','2017-03-20','Standard Class','BM-18120','Brian Moore','Home Office','United States','Boise','Idaho','West','OFF-PA-10037','Office Supplies','Paper','Xerox Color',19.95),
('CA-2017-10038','2017-03-18','2017-03-21','Second Class','CK-19010','Chris King','Consumer','United States','Portland','Oregon','West','TEC-AC-10038','Technology','Accessories','HP Keyboard',49.99),
('CA-2017-10039','2017-03-19','2017-03-22','Standard Class','CK-19010','Chris King','Consumer','United States','Portland','Oregon','West','OFF-EN-10039','Office Supplies','Envelopes','Quality Park',11.30),
('CA-2017-10040','2017-03-20','2017-03-23','Second Class','RL-16050','Rachel Lee','Corporate','United States','New York','New York','East','TEC-PH-10040','Technology','Phones','Polycom VVX',345.00),

('CA-2017-10041','2017-03-21','2017-03-24','Standard Class','RL-16050','Rachel Lee','Corporate','United States','New York','New York','East','OFF-BI-10041','Office Supplies','Binders','GBC Pro',56.40),
('CA-2017-10042','2017-03-22','2017-03-25','Second Class','MT-17830','Mark Turner','Consumer','United States','Columbus','Ohio','Central','FUR-CH-10042','Furniture','Chairs','HON Ignition',320.90),
('CA-2017-10043','2017-03-23','2017-03-26','Standard Class','MT-17830','Mark Turner','Consumer','United States','Columbus','Ohio','Central','OFF-PA-10043','Office Supplies','Paper','Copy Plus',27.60),
('CA-2017-10044','2017-03-24','2017-03-27','Second Class','NS-14980','Nina Scott','Home Office','United States','Tampa','Florida','South','TEC-AC-10044','Technology','Accessories','Anker Cable',15.99),
('CA-2017-10045','2017-03-25','2017-03-28','Standard Class','NS-14980','Nina Scott','Home Office','United States','Tampa','Florida','South','OFF-ST-10045','Office Supplies','Storage','Bankers Box',74.25),

('CA-2017-10046','2017-03-26','2017-03-29','Second Class','DW-16640','Daniel White','Corporate','United States','Albany','New York','East','OFF-AR-10046','Office Supplies','Art','Sharpie Set',13.49),
('CA-2017-10047','2017-03-27','2017-03-30','Standard Class','DW-16640','Daniel White','Corporate','United States','Albany','New York','East','OFF-BI-10047','Office Supplies','Binders','Avery Heavy',28.75),
('CA-2017-10048','2017-03-28','2017-03-31','Second Class','KC-17290','Kevin Cruz','Consumer','United States','El Paso','Texas','Central','FUR-TA-10048','Furniture','Tables','Office Star',540.80),
('CA-2017-10049','2017-03-29','2017-04-01','Standard Class','KC-17290','Kevin Cruz','Consumer','United States','El Paso','Texas','Central','OFF-AP-10049','Office Supplies','Appliances','Sunbeam',89.99),
('CA-2017-10050','2017-03-30','2017-04-02','Second Class','AL-18860','Anna Lopez','Consumer','United States','San Jose','California','West','TEC-PH-10050','Technology','Phones','Google Pixel',649.00);

('CA-2018-20051','2018-01-01','2018-01-04','Standard Class','AB-10101','Alex Brown','Consumer','United States','Dallas','Texas','Central','OFF-PA-20051','Office Supplies','Paper','Hammermill Copy',24.50),
('CA-2018-20052','2018-01-02','2018-01-05','Second Class','BC-20202','Brian Clark','Corporate','United States','Austin','Texas','Central','TEC-AC-20052','Technology','Accessories','Logitech Webcam',89.99),
('CA-2018-20053','2018-01-03','2018-01-06','Standard Class','CD-30303','Cathy Davis','Home Office','United States','San Antonio','Texas','Central','OFF-BI-20053','Office Supplies','Binders','Avery Flex',17.40),
('CA-2018-20054','2018-01-04','2018-01-07','Second Class','DE-40404','David Evans','Consumer','United States','Houston','Texas','Central','FUR-CH-20054','Furniture','Chairs','HON Task Chair',189.00),
('CA-2018-20055','2018-01-05','2018-01-08','Standard Class','EF-50505','Ella Foster','Consumer','United States','Orlando','Florida','South','OFF-ST-20055','Office Supplies','Storage','Sterilite Drawer',64.75),

('CA-2018-20056','2018-01-06','2018-01-09','Second Class','FG-60606','Frank Green','Corporate','United States','Tampa','Florida','South','TEC-PH-20056','Technology','Phones','Cisco IP Phone',299.00),
('CA-2018-20057','2018-01-07','2018-01-10','Standard Class','GH-70707','Grace Hill','Consumer','United States','Miami','Florida','South','OFF-AR-20057','Office Supplies','Art','Sharpie Markers',12.90),
('CA-2018-20058','2018-01-08','2018-01-11','Second Class','HI-80808','Henry Irving','Home Office','United States','Atlanta','Georgia','South','FUR-FU-20058','Furniture','Furnishings','Desk Lamp',45.60),
('CA-2018-20059','2018-01-09','2018-01-12','Standard Class','IJ-90909','Isla Jones','Consumer','United States','Savannah','Georgia','South','OFF-PA-20059','Office Supplies','Paper','Xerox Bright',31.20),
('CA-2018-20060','2018-01-10','2018-01-13','Second Class','JK-11111','Jack King','Corporate','United States','Nashville','Tennessee','South','TEC-AC-20060','Technology','Accessories','Dell Mouse',19.99),

('CA-2018-20061','2018-01-11','2018-01-14','Standard Class','KL-22222','Karen Lee','Consumer','United States','Memphis','Tennessee','South','OFF-BI-20061','Office Supplies','Binders','Wilson Jones',22.80),
('CA-2018-20062','2018-01-12','2018-01-15','Second Class','LM-33333','Leo Moore','Home Office','United States','Louisville','Kentucky','South','FUR-TA-20062','Furniture','Tables','Office Desk',540.00),
('CA-2018-20063','2018-01-13','2018-01-16','Standard Class','MN-44444','Mia Nelson','Consumer','United States','Cleveland','Ohio','Central','OFF-ST-20063','Office Supplies','Storage','Bankers Box',71.40),
('CA-2018-20064','2018-01-14','2018-01-17','Second Class','NO-55555','Noah Owens','Corporate','United States','Columbus','Ohio','Central','TEC-PH-20064','Technology','Phones','Panasonic Phone',210.00),
('CA-2018-20065','2018-01-15','2018-01-18','Standard Class','OP-66666','Olivia Perez','Consumer','United States','Cincinnati','Ohio','Central','OFF-AR-20065','Office Supplies','Art','Crayola Set',18.25),

('CA-2018-20066','2018-01-16','2018-01-19','Second Class','PQ-77777','Paul Quinn','Home Office','United States','Madison','Wisconsin','Central','FUR-CH-20066','Furniture','Chairs','Steelcase Chair',420.00),
('CA-2018-20067','2018-01-17','2018-01-20','Standard Class','QR-88888','Queen Rogers','Consumer','United States','Milwaukee','Wisconsin','Central','OFF-PA-20067','Office Supplies','Paper','Copy Paper',26.70),
('CA-2018-20068','2018-01-18','2018-01-21','Second Class','RS-99999','Ryan Smith','Corporate','United States','Green Bay','Wisconsin','Central','TEC-AC-20068','Technology','Accessories','USB Hub',34.99),
('CA-2018-20069','2018-01-19','2018-01-22','Standard Class','ST-12121','Sara Turner','Consumer','United States','Des Moines','Iowa','Central','OFF-BI-20069','Office Supplies','Binders','Avery Basic',14.60),
('CA-2018-20070','2018-01-20','2018-01-23','Second Class','TU-13131','Tom Underwood','Home Office','United States','Omaha','Nebraska','Central','FUR-FU-20070','Furniture','Furnishings','Wall Clock',39.90),

('CA-2018-20071','2018-01-21','2018-01-24','Standard Class','UV-14141','Uma Vega','Consumer','United States','Lincoln','Nebraska','Central','OFF-ST-20071','Office Supplies','Storage','Plastic Bin',52.30),
('CA-2018-20072','2018-01-22','2018-01-25','Second Class','VW-15151','Victor White','Corporate','United States','Fargo','North Dakota','Central','TEC-PH-20072','Technology','Phones','Yealink Phone',180.00),
('CA-2018-20073','2018-01-23','2018-01-26','Standard Class','WX-16161','Wendy Xu','Consumer','United States','Bismarck','North Dakota','Central','OFF-PA-20073','Office Supplies','Paper','Legal Pad',9.75),
('CA-2018-20074','2018-01-24','2018-01-27','Second Class','XY-17171','Xander Young','Home Office','United States','Boise','Idaho','West','FUR-TA-20074','Furniture','Tables','Meeting Table',780.00),
('CA-2018-20075','2018-01-25','2018-01-28','Standard Class','YZ-18181','Yara Zane','Consumer','United States','Spokane','Washington','West','OFF-AR-20075','Office Supplies','Art','Sketch Pad',11.80),

('CA-2018-20076','2018-01-26','2018-01-29','Second Class','ZA-19191','Zack Allen','Corporate','United States','Tacoma','Washington','West','TEC-AC-20076','Technology','Accessories','HDMI Cable',15.60),
('CA-2018-20077','2018-01-27','2018-01-30','Standard Class','AB-20202','Amy Brooks','Consumer','United States','Olympia','Washington','West','OFF-BI-20077','Office Supplies','Binders','GBC Spine',23.45),
('CA-2018-20078','2018-01-28','2018-01-31','Second Class','BC-21212','Ben Carter','Home Office','United States','Eugene','Oregon','West','FUR-CH-20078','Furniture','Chairs','Guest Chair',155.00),
('CA-2018-20079','2018-01-29','2018-02-01','Standard Class','CD-22222','Cara Diaz','Consumer','United States','Salem','Oregon','West','OFF-ST-20079','Office Supplies','Storage','File Box',48.90),
('CA-2018-20080','2018-01-30','2018-02-02','Second Class','DE-23232','Dan Ellis','Corporate','United States','Portland','Oregon','West','TEC-PH-20080','Technology','Phones','Motorola Desk',265.00),

('CA-2018-20081','2018-02-01','2018-02-04','Standard Class','EF-24242','Eva Flores','Consumer','United States','San Jose','California','West','OFF-PA-20081','Office Supplies','Paper','Premium A4',33.60),
('CA-2018-20082','2018-02-02','2018-02-05','Second Class','FG-25252','Felix Grant','Home Office','United States','Fresno','California','West','FUR-FU-20082','Furniture','Furnishings','Office Rug',210.40),
('CA-2018-20083','2018-02-03','2018-02-06','Standard Class','GH-26262','Gina Hall','Consumer','United States','Bakersfield','California','West','OFF-AR-20083','Office Supplies','Art','Paint Set',27.95),
('CA-2018-20084','2018-02-04','2018-02-07','Second Class','HI-27272','Hank Ives','Corporate','United States','Modesto','California','West','TEC-AC-20084','Technology','Accessories','Wireless Charger',39.99),
('CA-2018-20085','2018-02-05','2018-02-08','Standard Class','IJ-28282','Ivy Johnson','Consumer','United States','Stockton','California','West','OFF-BI-20085','Office Supplies','Binders','Durable Binder',19.85);

