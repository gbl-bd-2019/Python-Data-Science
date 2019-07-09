DROP TABLE IF EXISTS sushi_ice;
CREATE database sushi_ice;

USE sushi_ice

show tables;

-- ������� 1

DROP TABLE IF EXISTS tbl_catalog;
CREATE TABLE tbl_catalog(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

INSERT INTO tbl_catalog (name) values
		('rolls'),
		('classic_rolls'),
		('hot_rolls'),
		('tempur_rolls');

-- ������� 2

DROP TABLE IF EXISTS tbl_components;
CREATE TABLE tbl_components(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT null unique
);

INSERT INTO tbl_components (name) values
		('ris'),
		('nori'),
		('losos'),
		('kopcheniy losos'),
		('ugor'),
		('kopcheniy ugor'),
		('struzhka tunca'),
		('midii'),
		('grib shiitaki'),
		('snezhniy krab'),
		('kamchatskiy krab'),
		('tigrovaya krevetka'),
		('avokado'),
		('ogurec'),
		('slivochiy syr'),
		('zeleniy luk'),
		('ukrop'),
		('mayonez'),
		('sous spaisi'),
		('sous yaki'),
		('sous unagi'),
		('kunzhut'),
		('klyar'),
		('suhari panirovochnye'),
		('ikra masago');

-- ������� 3

DROP TABLE IF EXISTS tbl_rolls;
CREATE TABLE tbl_rolls(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT null, -- unique?
    catalog_id INT NOT NULL,
    price INT NOT null,
    weight INT,
    calories INT
);

INSERT INTO tbl_rolls (name, catalog_id, price, weight, calories) values
	('filadelfiya kunsej', 1, 249,200, NULL),
	('filadelfiya klassika', 1, 249, 220,NULL),
	('filadelfiya vip',1, 349, 235, 389),
	('bonito s ugrem',1, 349, 185,NULL),
	('bonito s kopchenym lososem', 1, 249, 185,NULL),
	('bonito s lososem', 1, 249, 185, NULL),
	('alyaska v kunzhute', 1, 199, 185, NULL),
	('kaliforniya s myasom kraba', 1, 449, 220, NULL),
	('filadelfiya ajs', 1, 199, 190,NULL),
	('kaliforniya orendzh', 1, 249, 195, NULL),
	('kaliforniya red', 1, 249, 210, NULL),
	('kaliforniya s avokado', 1, 249, 210,NULL),
	('fila grin', 1, 99, 195,NULL),
	('kanada',1, 299, 210, NULL),
	('kanada s lososem', 1, 349, 210,NULL),
	('kaliforniya s lososem',1, 299,NULL,NULL),
	('kaliforniya s ugrem', 1, 299, 200,NULL),
	('filadelfiya s ugrem',1,399, NULL,NULL),
	('bonito dabl', 1, 349, NULL,NULL),
	('s ogurcom', 2, 100, 150,NULL),
	('snezhnyj krab', 2, 140,140,NULL),
	('s lososem', 2, 159, 150, NULL),
	('s ugrem mini',2, 249, 90,NULL),
	('s ostrym lososem', 2, 249,150,NULL),
	('s ostroj krevetkoj', 2, 249,NULL,NULL),
	('filadelfiya maki)',2,199, 180,NULL),
	('s syrom',2,149, 140,NULL),
	('s avokado', 2, 140,140,NULL),
	('ostryj s krabom',3,249,230,NULL),
	('ostryj s krevetkoj',3,249,230,NULL),
	('ostryj s lososem',3,249,230,NULL),
	('ostryj s midiyami',3,249,230,NULL),
	('ostryj s shiitaki',3,249,230,NULL),
	('filadelfiya zapechenaya',3,249,220,NULL),
	('zapechenaya kaliforniya', 3, 249,240,NULL),
	('syrnyj s krabom',3,249,240,480),
	('syrnyj s gribami shiitaki',3,249,240,199),
	('dabl hot',3,299,260,NULL),
	('zapechenyj s kopchenym lososem',3,299, 240,NULL),
	('zapechenyj s midiyami',3,249,240,NULL),
	('zapechenyj s ugrem',3,349,240,NULL),
	('zapechenyj syrnyj',3,299,NULL,NULL),
	('zapechenyj s lososem',3,299,240,NULL),
	('zapechenyj s krevetkoj',3,299,240,NULL),
	('ostryj s ugrem',3,299,220,NULL),
	('kaliforniya tempura',4,299,235,NULL),
	('krevetka ebi tempura',4,399,NULL,NULL),
	('ugor unagi tempura',4,399,NULL,NULL),
	('kamchatskij tempura',4,499,NULL,NULL),
	('filadelfiya tempura',4,299,NULL,NULL);

-- ������� 4

DROP TABLE IF EXISTS tbl_contents;
CREATE TABLE tbl_contents(
--    id SERIAL PRIMARY KEY,
    roll_id INT NOT NULL,
    component_id INT NOT NULL
);

INSERT INTO tbl_contents (roll_id, component_id) values
(1,14),
(1,4),
(1,15),
(1,20),
(2,3),
(2,15),
(2,14),
(2,2),
(2,1),
(3,3),
(3,13),
(3,15),
(3,25),
(4,7),
(4,5),
(4,25),
(4,15),
(4,16),
(4,19),
(5, 4),
(5,15),
(5,7),
(5,25),
(5,16),
(5,19),
(6,3),
(6,15),
(6,7),
(6,25),
(6,16),
(6,19),
(7,3),
(7,15),
(7,14),
(7,22),
(8,11),
(8,3),
(8,14),
(8,25),
(9,3),
(9,15),
(9,14),
(9,25),
(10,10),
(10,14),
(10,25),
(11,10),
(11,15),
(11,14),
(11,25),
(11,1),
(11,2),
(12,10),
(12,13),
(12,14),
(12, 22),
(13,15),
(13,14),
(13,17),
(14,15),
(14,22),
(14,14),
(14,21),
(14,5),
(15,5),
(15,22),
(15,13),
(15,15),
(15,21),
(16,3),
(16,14),
(16,15),
(16,25),
(17,5),
(17,14),
(17,25),
(17,15),
(17,1),
(17,2),
(18,6),
(18,15),
(18,3),
(19,4),
(19,3),
(19,7),
(19,16),
(19,1),
(19,2),
(20,1),
(20,2),
(20,14),
(20,22),
(21,10),
(21,15),
(21,2),
(21,1),
(22,3),
(22,1),
(22,2),
(23,1),
(23,2),
(23,5),
(23,13),
(23,15),
(24,3),
(24,1),
(24,2),
(24,19),
(25,12),
(25,1),
(25,2),
(25,19),
(26,15),
(26,3),
(26,1),
(26,2),
(26,25),
(27,15),
(27,1),
(27,2),
(27,25),
(28,1),
(28,2),
(28,13),
(29,10),
(29,15),
(29,14),
(29,16),
(29,19),
(30,14),
(30,15),
(30,12),
(30,19),
(30,16),
(31,15),
(31,19),
(31,16),
(31,3),
(31,14),
(32,15),
(32,16),
(32,19),
(32,8),
(32,14),
(33,9),
(33,16),
(33,19),
(33,15),
(33,14),
(34,3),
(34,15),
(34,22),
(34,20),
(34,21),
(34,14),
(35,10),
(35,14),
(35,20),
(35,22),
(35,25),
(35,21),
(36,10),
(36,14),
(36,20),
(36,15),
(36,25),
(37,15),
(37,9),
(37,20),
(37,25),
(37,14),
(38,3),
(38,15),
(38,22),
(38,21),
(38,14),
(39,4),
(39,15),
(39,20),
(39,14),
(39,25),
(40,8),
(40,25),
(40,15),
(40,20),
(40,14),
(41,6),
(41,14),
(41,15),
(41,20),
(41,25),
(42,14),
(42,16),
(42,3),
(42,21),
(42,22),
(43,4),
(43,15),
(43,25),
(43,20),
(43,14),
(44,12),
(44,15),
(44,14),
(44,20),
(45,6),
(45,19),
(45,15),
(45,14),
(46,14),
(46,24),
(46,23),
(46,25),
(47,1),
(47,12),
(47,25),
(47,15),
(47,24),
(47,14),
(47,23),
(48,5),
(48,25),
(48,15),
(48,14),
(48,23),
(48,24),
(48,1),
(49,25),
(49,23),
(49,24),
(49,15),
(49,11),
(49,3),
(50,3),
(50,24),
(50,25),
(50,23),
(50,15);

-- ������� 5

DROP TABLE IF EXISTS tbl_users;
CREATE TABLE tbl_users(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

INSERT INTO tbl_users (name) values
	('User 1'),
	('User 2'),
	('User 3');

-- ������� 6

DROP TABLE IF EXISTS tbl_orders;
CREATE TABLE tbl_orders(
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    date_by DATETIME NOT NULL
);

-- ������� 7

DROP TABLE IF EXISTS tbl_baskets;
CREATE TABLE tbl_baskets(
--    id SERIAL PRIMARY KEY,
    order_id INT NOT NULL,
    roll_id INT NOT NULL,
    roll_count INT NOT null,
    action_id INT
);

-- ������� 8

DROP TABLE IF EXISTS tbl_sets;
CREATE TABLE tbl_sets(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price INT NOT null,
    weight INT,
    calories INT
);

INSERT INTO tbl_sets (name, price, weight, calories) values
	('zapechenyj dabl set',399, NULL,NULL),
	('set ostryj', 599,599, NULL),
	('set syrnyj',599,880,1560),
	('set kanada', 749,615,1010),
	('set klassika',699,785,1268),
	('set grin',449,595,1010),
	('set svetofor',399,595,1010),
	('set kalifa',699,910,1127),
	('set filadelfiya',749,700,1075),
	('set kunsej',749,810,NULL),
	('set tempura',899,880,1957),
	('set kalifornijskij',899,935,1439),
	('set kombo',1099,1150,2024),
	('set super lyuks',1399,1780,2486),
	('zapechenyj super set', 1199,1520,2486),
	('set tempo',899,860,NULL),
	('set hit',699,750,NULL);

-- ������� 9

DROP TABLE IF EXISTS tbl_set_contents;
CREATE TABLE tbl_set_contents(
--    id SERIAL PRIMARY KEY,
    roll_id INT NOT NULL,
    set_id INT NOT NULL
);

INSERT INTO tbl_set_contents (set_id, roll_id) values
(1,35),
(1,36),
(2,33),
(2,32),
(2,29),
(3,37),
(3,36),
(3,40),
(4,14),
(4,17),
(4,27),
(4,12),
(5,13),
(5,7),
(5,2),
(5,12),
(6,13),
(6,10),
(6,16),
(7,13),
(7,10),
(7,16),
(8,12),
(8,10),
(8,35),
(8,40),
(9,1),
(9,2),
(9,9),
(9,20),
(10,1),
(10,21),
(10,14),
(10,42),
(11,50),
(11,27),
(11,11),
(11,46),
(12,42),
(12,38),
(12,10),
(12,2),
(13,34),
(13,37),
(13,38),
(13,9),
(13,7),
(14,7),
(14,10),
(14,2),
(14,35),
(14,33),
(14,29),
(14,40),
(14,14),
(15,35),
(15,37),
(15,29),
(15,32),
(15,34),
(15,38),
(16,47),
(16,46),
(16,50),
(17,34),
(17,38),
(17,35);

-- ������� 10

DROP TABLE IF EXISTS tbl_rolls_rating;
CREATE TABLE tbl_rolls_rating(
--    id SERIAL PRIMARY KEY,
    roll_id INT NOT NULL,
    user_id INT NOT NULL,
    rating INT NOT NULL
);

INSERT INTO tbl_rolls_rating (roll_id, user_id, rating) values
	(1, 1, 10),
	(2, 1, 10),
	(7, 1, 10),
	(12, 1, 10),
	(13, 1, 7),
	(14, 1, 9),
	(15, 1, 10),
	(18, 1, 10),
	(19, 1, 10),
	(20, 1, 7),
	(21, 1, 10),
	(22, 1, 7),
	(23, 1, 6),
	(20, 2, 7),
	(21, 2, 10),
	(22, 2, 7),
	(23, 2, 6);

-- ������� ������ ���� c bvtyfvb ceib
select
 	Group_concat(tbl_components.name separator ', '),
	tbl_rolls.name
from
	tbl_contents
join
	tbl_components
join
	tbl_rolls
where
	(tbl_contents.component_id = tbl_components.id) AND
	(tbl_contents.roll_id = tbl_rolls.id)
group by
 	tbl_contents.roll_id;

drop function if exists recomend_set;

-- ===================== ������ ������� ������������ ====================

delimiter //

-- returns int read sql data
create function recomend_set(user_id INT)
returns int
begin

-- �������� ����� ������������ �� ������	
	create or replace view user_preference (roll_id) as
		select roll_id
			FROM tbl_rolls_rating
			where (tbl_rolls_rating.user_id) = user_id and (rating >= 6);

-- �������� ���������� ��������� ������ � �����	
	create or replace view count_pref_in_sets (st_count, set_id) as
		select count(*), set_id
			FROM tbl_set_contents
			where roll_id in (select * from user_preference)
			group by set_id;

-- �������� ����� ���������� ������ � �����	
	create or replace view sets_count (st_count, set_id) as
		select count(*), set_id
			FROM tbl_set_contents
			group by set_id;

-- ���������� ������� � ����� � ��������� �����������	
	create or replace view total_count (set_count, pref_count, set_id) as
		select sc.st_count, tp.st_count, sc.set_id
			from sets_count as sc
			join count_pref_in_sets as tp
			where sc.set_id = tp.set_id

-- ������� � ���������� ��������� � ������ � �����, ������������� �� ���������	
	create or replace view pref_rating (prop, set_count, pref_count, set_id) as
		select pref_count/set_count as prop, set_count, pref_count, set_id
			from total_count
			order by prop desc;

-- ���������� ������ ������������ ���������
	return set_id from pref_rating limit 1;

	drop view if exists tmp_preference;
	drop view if exists sets_count;
	drop view if exists total_count;
	drop view if exists pref_rating;


end //

delimiter ;

-- ===================== ����� ������� ������������ ====================


