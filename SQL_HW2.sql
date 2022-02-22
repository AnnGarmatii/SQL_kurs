--Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null

create table employees(
id serial primary key,
employee_name varchar (50) not null
);

--Наполнить таблицу employees 70 строками.

insert into employees(employee_name)
values ('Peter Black'),
('David Thomas'),
('Billy McDonald'),
('Bessie Watkins'),
('Jennifer Dean'),
('Agnes Underwood'),
('Randall Griffin'),
('Sergio Townsend'),
('Judith Graham'),
('Megan Reed'),
('Anne Cole'),
('Stephen Smith'),
('Betty Williams'),
('Cecil White'),
('Crystal Stanley'),
('Aaron Mullins'),
('Arthur Smith'),
('Cathy Parsons'),
('Nancy Hughes'),
('Pamela Armstrong'),
('Frances Thompson'),
('Kimberly Wright'),
('Robert Green'),
('Travis Flores'),
('Robert Banks'),
('Charles Oliver'),
('Cathy Bailey'),
('Linda Scott'),
('Melissa Bush'),
('Linda Washington'),
('Joyce Sanders'),
('Diane Dean'),
('Karen Clark'),
('Carolyn Perkins'),
('Sean Martinez'),
('Sandra Moore'),
('Edward Ingram'),
('Ellen Brady'),
('Charles Moore'),
('Lawrence Roberts'),
('James White'),
('John Perry'),
('Jesus Johnson'),
('Ralph Rose'),
('Gary Carroll'),
('Thelma Flores'),
('Oscar Rodriguez'),
('Michelle Scott'),
('Janet Green'),
('Theresa Jackson'),
('Bill Cook'),
('James Summers'),
('Denise Armstrong'),
('Diane Manning'),
('Eddie Robertson'),
('Lynn Carter'),
('Antonio Francis'),
('Ashley Lane'),
('Phillip Green'),
('Barbara Rogers'),
('Anne Johnson'),
('Kenneth Lawson'),
('Diane Smith'),
('Gladys Johnson'),
('Jacqueline White'),
('Jill Walters'),
('Robert Henry'),
('Barbara Byrd'),
('Pearl McDaniel'),
('Sharon Yates');



--Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null

create table salary(
id serial primary key,
monthly_salary int not null
);

--Наполнить таблицу salary 15 строками

insert into salary(monthly_salary)
values(1000),
	(1100),
	(1200),
	(1300),
	(1400),
	(1500),
	(1600),
	(1700),
	(1800),
	(1900),
	(2000),
	(2100),
	(2200),
	(2300),
	(2400),
	(2500);

--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null


create table employee_salary( 
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

--Наполнить таблицу employee_salary 40 строками
--- в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary(employee_id, salary_id)
values	(3,7),
(1,4),
(5,9),
(40,13),
(23,4),
(11,2),
(52,10),
(15,13),
(26,4),
(16,1),
(33,7),
(8,2),
(10,11),
(17,10),
(4,15),
(39,14),
(46,2),
(13,1),
(2,3),
(7,5),
(24,8),
(25,1),
(30,2),
(31,7),
(32,9),
(34,11),
(35,14),
(41,15),
(42,14),
(43,6),
(123,1),
(324,8),
(534,6),
(234,12),
(87,15),
(90,2),
(657,11),
(7890,6),
(332,9),
(654,4);


--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique

create table roles( 
id serial primary key,
role_name int not null unique
);

--Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column role_name type varchar(30);

--Наполнить таблицу roles 20 строками
insert into roles(role_name)
values ('Junior Python developer'),
	('Middle Python developer'),
	('Senior Python developer'),
	('Junior Java developer'),
	('Middle Java developer'),
	('Senior Java developer'),
	('Junior JavaScript developer'),
	('Middle JavaScript developer'),
	('SeniorJavaScript developer'),
	('Junior Manual QA engineer'),
	('Middle Manual QA engineer'),
	('Senior Manual QA engineer'),
	('Project_Manager'),
	('Designer'),
	('HR'),
	('CEO'),
	('Sales manager'),
	('Junior Automation QA engineer'),
	('Middle Automation QA engineer'),
	('Senior Automation QA engineer');
	

	
--Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee( 
id serial  primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
	references employees (id),
foreign key (role_id)
	references roles (id)
);

--Наполнить таблицу roles_employee 40 строками
insert into roles_employee(employee_id, role_id)
values (7,2),
	(20,4),
	(3,9),
	(5,13),
	(23,4),
	(11,2),
	(10,9),
	(22,13),
	(21,3),
	(34,4),
	(6,7),
	(70,19),
	(68,20),
	(50,2),
	(46,7),
	(40,13),
	(38,3),
	(49,18),
	(31,1),
	(24,6);
