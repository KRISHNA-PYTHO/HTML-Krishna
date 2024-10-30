USE shield;

DROP TABLE car;
CREATE TABLE car(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(30) unique,
city VARCHAR(30) NOT NULL,
age INT CHECK (age>18),
model VARCHAR(30) DEFAULT 'CRUZE'
);

ALTER TABLE car
MODIFY COLUMN city VARCHAR(30) NOT NULL;

ALTER TABLE car
ALTER COLUMN model DROP DEFAULT;

ALTER TABLE car
DROP INDEX name;

ALTER TABLE car
DROP PRIMARY KEY,
MODIFY COLUMN id INT;

SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME='car';

ALTER TABLE car
DROP constraint car_chk_1;

SHOW INDEX FROM car;

DESC car;

USE shield;

SELECT * FROM avengers;

SELECT f_name, l_name FROM avengers;

SELECT * FROM avengers
WHERE f_name LIKE 'S%';

SELECT * FROM avengers
WHERE heroic_name LIKE '%N';

SELECT * FROM avengers
WHERE f_name LIKE '_o%';

SELECT * FROM avengers
WHERE l_name LIKE '_A__E%';

create table MOCK_DATA (
    id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50),
    gender VARCHAR(50),
    city VARCHAR(50)
);
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (1, 'Erick', 'Gianni', 'egianni0@bbc.co.uk', 'Male', 'Lazaro Cardenas');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (2, 'Giacobo', 'Morfield', 'gmorfield1@histats.com', 'Non-binary', 'Lao Suea Kok');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (3, 'Fabio', 'Tolchard', 'ftolchard2@cornell.edu', 'Male', 'Xiawa');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (4, 'Iormina', 'Holtom', 'iholtom3@pcworld.com', 'Female', 'Sławatycze');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (5, 'Sly', 'Pughsley', 'spughsley4@wunderground.com', 'Male', 'Dziewin');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (6, 'Jordan', 'Antonescu', 'jantonescu5@usnews.com', 'Female', 'Sujiazhuang');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (7, 'Roxane', 'Hoyle', 'rhoyle6@etsy.com', 'Female', 'Bacem');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (8, 'Garland', 'Starmore', 'gstarmore7@shutterfly.com', 'Female', 'Huage');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (9, 'Roseanne', 'Sprigin', 'rsprigin8@scribd.com', 'Female', 'Xuri');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (10, 'Lexie', 'McAllan', 'lmcallan9@psu.edu', 'Female', 'Cibeureum');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (11, 'Leone', 'Schmidt', 'lschmidta@rediff.com', 'Female', 'Nyūzen');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (12, 'Doralynn', 'Tourry', 'dtourryb@etsy.com', 'Female', 'Černelavci');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (13, 'Wilmer', 'Biggadyke', 'wbiggadykec@gmpg.org', 'Male', 'Talaibon');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (14, 'Egbert', 'Ovendon', 'eovendond@altervista.org', 'Male', 'Lidköping');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (15, 'Esma', 'Chooter', 'echootere@wufoo.com', 'Female', 'Shataping');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (16, 'Dov', 'Erb', 'derbf@cisco.com', 'Male', 'Maracha');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (17, 'Theressa', 'Pepperd', 'tpepperdg@japanpost.jp', 'Female', 'Karanggeneng');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (18, 'Daniel', 'McLewd', 'dmclewdh@opensource.org', 'Male', 'Monteros');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (19, 'Dan', 'Rulton', 'drultoni@mysql.com', 'Male', 'Sala');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (20, 'Edie', 'Ottewill', 'eottewillj@nydailynews.com', 'Female', 'Shingū');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (21, 'Florry', 'Olrenshaw', 'folrenshawk@xinhuanet.com', 'Female', 'Perpignan');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (22, 'Orly', 'Grioli', 'ogriolil@deviantart.com', 'Female', 'Mykolayiv');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (23, 'Sydelle', 'Bremen', 'sbremenm@weibo.com', 'Female', 'Monte Mor');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (24, 'Isacco', 'Scutcheon', 'iscutcheonn@stanford.edu', 'Male', 'Salerno');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (25, 'Doretta', 'de Bullion', 'ddebulliono@utexas.edu', 'Female', 'Hancheng');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (26, 'Farra', 'Bennison', 'fbennisonp@hatena.ne.jp', 'Female', 'Daluo');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (27, 'Reid', 'Bock', 'rbockq@mediafire.com', 'Male', 'Yangxunqiao');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (28, 'Melania', 'Brasse', 'mbrasser@eepurl.com', 'Female', 'Kuteynykove');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (29, 'Dacy', 'Pound', 'dpounds@desdev.cn', 'Female', 'Shuigou');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (30, 'Arther', 'Helwig', 'ahelwigt@deliciousdays.com', 'Male', 'Capitán Bermúdez');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (31, 'Glynnis', 'Seed', 'gseedu@angelfire.com', 'Female', 'Naqadeh');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (32, 'Vinny', 'Kaes', 'vkaesv@studiopress.com', 'Female', 'Minas de Matahambre');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (33, 'Berta', 'Deevey', 'bdeeveyw@homestead.com', 'Bigender', 'Pustomyty');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (34, 'Reidar', 'Mandrier', 'rmandrierx@chronoengine.com', 'Male', 'Pingli');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (35, 'Deloris', 'Kelway', 'dkelwayy@engadget.com', 'Female', 'Wilmington');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (36, 'Ruddy', 'Winspur', 'rwinspurz@springer.com', 'Male', 'Zheshan');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (37, 'Francklin', 'Skewis', 'fskewis10@narod.ru', 'Male', 'Dingqing');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (38, 'Alberto', 'Checchetelli', 'achecchetelli11@weebly.com', 'Male', 'Tadrart');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (39, 'Bruno', 'Shirrell', 'bshirrell12@census.gov', 'Male', 'Perniö');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (40, 'Winnifred', 'Filipowicz', 'wfilipowicz13@sitemeter.com', 'Polygender', 'Dangchang Chengguanzhen');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (41, 'Cassondra', 'Teek', 'cteek14@virginia.edu', 'Female', 'Tianta');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (42, 'Mina', 'Giroldo', 'mgiroldo15@1688.com', 'Female', 'Hatsukaichi');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (43, 'Jourdain', 'Gilffilland', 'jgilffilland16@nba.com', 'Male', 'Mūdīyah');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (44, 'Felicdad', 'Benn', 'fbenn17@elegantthemes.com', 'Female', 'Kokubunji');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (45, 'Marketa', 'Gradwell', 'mgradwell18@reuters.com', 'Female', 'Tawa');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (46, 'Genvieve', 'Meineken', 'gmeineken19@google.co.uk', 'Female', 'Trzin');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (47, 'Jacob', 'Hornung', 'jhornung1a@thetimes.co.uk', 'Male', 'Ujmisht');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (48, 'Alameda', 'Buckingham', 'abuckingham1b@telegraph.co.uk', 'Female', 'Palmar de Varela');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (49, 'Estella', 'Lindenberg', 'elindenberg1c@sakura.ne.jp', 'Polygender', 'Potlot');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (50, 'Goldarina', 'Thonason', 'gthonason1d@flickr.com', 'Female', 'Jaba‘');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (51, 'Roarke', 'Elvy', 'relvy1e@microsoft.com', 'Male', 'Yejia');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (52, 'Abagail', 'Hathway', 'ahathway1f@seesaa.net', 'Female', 'Puerto Madryn');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (53, 'Agnese', 'Linnell', 'alinnell1g@alibaba.com', 'Female', 'Garça');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (54, 'Starla', 'Rundall', 'srundall1h@nsw.gov.au', 'Female', 'Mundolsheim');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (55, 'Teodoor', 'Cust', 'tcust1i@home.pl', 'Bigender', 'Água Levada');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (56, 'Vivyan', 'Pilipets', 'vpilipets1j@shinystat.com', 'Female', 'Araras');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (57, 'Christy', 'Gosney', 'cgosney1k@163.com', 'Female', 'Bayan Ewenke Minzu');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (58, 'Gerik', 'Bartolic', 'gbartolic1l@google.it', 'Male', 'Yanjiang');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (59, 'Horatio', 'Scawen', 'hscawen1m@ebay.co.uk', 'Male', 'Claremorris');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (60, 'Leese', 'Bohlens', 'lbohlens1n@youtu.be', 'Female', 'Thio');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (61, 'Kaylee', 'Jills', 'kjills1o@studiopress.com', 'Female', 'Novomoskovsk');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (62, 'Sibylle', 'Ibell', 'sibell1p@slashdot.org', 'Female', 'Ręczno');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (63, 'Kleon', 'McAlister', 'kmcalister1q@alibaba.com', 'Male', 'Dahua');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (64, 'Binnie', 'Cuxon', 'bcuxon1r@salon.com', 'Female', 'Round Rock');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (65, 'Gavra', 'Gordon', 'ggordon1s@guardian.co.uk', 'Genderfluid', 'Klayusiwalan');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (66, 'Astrid', 'Sipson', 'asipson1t@zdnet.com', 'Female', 'Baozi');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (67, 'Kerk', 'Micklem', 'kmicklem1u@cbc.ca', 'Male', 'Tornio');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (68, 'Elena', 'Ferencowicz', 'eferencowicz1v@goodreads.com', 'Female', 'Sukakerta');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (69, 'Hallie', 'Carlyle', 'hcarlyle1w@skype.com', 'Female', 'Borås');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (70, 'Birgit', 'Tuite', 'btuite1x@rakuten.co.jp', 'Female', 'Pingqiao');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (71, 'Melodee', 'Mundy', 'mmundy1y@time.com', 'Female', 'Mizhhir’ya');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (72, 'Sonnnie', 'Sloper', 'ssloper1z@i2i.jp', 'Female', 'Rajūzah');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (73, 'Rickert', 'Fawckner', 'rfawckner20@nih.gov', 'Male', 'Libato');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (74, 'Annamaria', 'Roches', 'aroches21@hostgator.com', 'Female', 'Dobruševo');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (75, 'Melva', 'Cawthry', 'mcawthry22@twitter.com', 'Female', 'Uzlovaya');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (76, 'Saundra', 'Shankland', 'sshankland23@blogger.com', 'Male', 'Annecy');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (77, 'Wilfred', 'Geater', 'wgeater24@usnews.com', 'Male', 'Villanueva');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (78, 'Steffie', 'Torpie', 'storpie25@gnu.org', 'Female', 'Capela');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (79, 'Kendrick', 'Haverson', 'khaverson26@hud.gov', 'Male', 'Spandaryan');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (80, 'Ingamar', 'Duer', 'iduer27@istockphoto.com', 'Male', 'Xinghua');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (81, 'Claybourne', 'McOrkill', 'cmcorkill28@godaddy.com', 'Male', 'Senada');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (82, 'Filmore', 'Le Maitre', 'flemaitre29@hc360.com', 'Male', 'Badar');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (83, 'Desmond', 'Frie', 'dfrie2a@umich.edu', 'Male', 'Askim');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (84, 'Katherina', 'Langmead', 'klangmead2b@ow.ly', 'Female', 'Sukasirna');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (85, 'Vallie', 'Seeds', 'vseeds2c@feedburner.com', 'Female', 'Pirok');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (86, 'Hamlin', 'Durban', 'hdurban2d@google.com.au', 'Male', 'Kuršumlija');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (87, 'Celestyn', 'Rowledge', 'crowledge2e@comcast.net', 'Female', 'Lumbayan');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (88, 'Jeramie', 'Rickesies', 'jrickesies2f@bbc.co.uk', 'Male', 'Selce');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (89, 'Rogerio', 'Clemmen', 'rclemmen2g@oaic.gov.au', 'Male', 'Xinjie');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (90, 'Whitney', 'Labbez', 'wlabbez2h@salon.com', 'Female', 'Lidian');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (91, 'Jacquenette', 'Escolme', 'jescolme2i@desdev.cn', 'Bigender', 'Wuxiang');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (92, 'Coleman', 'Rafter', 'crafter2j@ifeng.com', 'Male', 'Sudo');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (93, 'Hamnet', 'Shimony', 'hshimony2k@yale.edu', 'Polygender', 'Geoktschai');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (94, 'Ailis', 'Braybrook', 'abraybrook2l@yahoo.co.jp', 'Bigender', 'Cisaro');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (95, 'Edwina', 'Fritchly', 'efritchly2m@diigo.com', 'Female', 'Kraton');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (96, 'Lynda', 'Leipoldt', 'lleipoldt2n@tmall.com', 'Female', 'Sabinópolis');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (97, 'Orelia', 'Braun', 'obraun2o@weibo.com', 'Genderqueer', 'Moreno');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (98, 'Lona', 'Charity', 'lcharity2p@dailymotion.com', 'Female', 'Xuling');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (99, 'Bronny', 'Spadotto', 'bspadotto2q@omniture.com', 'Male', 'Kochevo');
insert into MOCK_DATA (id, first_name, last_name, email, gender, city) values (100, 'Adrian', 'Eberz', 'aeberz2r@msu.edu', 'Male', 'Tegalalang');

SELECT * FROM MOCK_DATA;

SELECT * FROM MOCK_DATA
WHERE id >50 AND first_name LIKE 't%' ;

SELECT * FROM MOCK_DATA
WHERE id LIMIT 35,12;

SELECT first_name,email FROM MOCK_DATA
WHERE gender ='female'  AND last_name LIKE '%d';

SELECT * FROM MOCK_DATA
WHERE id NOT IN(10,20,30,40,50) AND gender='male' AND email LIKE '%ORG';

SELECT * FROM MOCK_DATA
ORDER BY first_name DESC;

USE shield;

SELECT city FROM avengers;

SELECT DISTINCT city FROM avengers;

USE shield;

CREATE TABLE marvel(
id INT,
name VARCHAR(30));

INSERT INTO	marvel(id,name)
VALUES( 1,'steve');

SELECT * FROM marvel;

ALTER TABLE marvel
ADD COLUMN l_name VARCHAR (30);

SELECT * FROM marvel;

USE shield;

SELECT * FROM avengers;

DELETE FROM avengers
WHERE ar_id=4;

UPDATE avengers
SET f_name = 'steven roger'
WHERE ar_id=1;



ALTER TABLE marvel
DROP COLUMN first_name;

ALTER TABLE marvel
DROP COLUMN seher;

ALTER TABLE marvel
CHANGE COLUMN seher seher INT;

ALTER TABLE marvel
MODIFY COLUMN first_name CHAR(3);

ALTER TABLE marvel
MODIFY COLUMN age VARCHAR(30);

DESC marvel;

ALTER TABLE marvel
CHANGE COLUMN name first_name VARCHAR (30),
CHANGE COLUMN l_name last_name VARCHAR (30);

ALTER TABLE marvel
ADD COLUMN age INT,
ADD COLUMN city VARCHAR(30);

ALTER TABLE marvel
ADD COLUMN gender VARCHAR (30) FIRST;

ALTER TABLE marvel
ADD COLUMN  address VARCHAR(30) AFTER l_name;

ALTER TABLE marvel
ADD COLUMN seher VARCHAR(30) UNIQUE;

DESC marvel;

ALTER TABLE marvel
CHANGE COLUMN address pata VARCHAR (30);

USE shield;






