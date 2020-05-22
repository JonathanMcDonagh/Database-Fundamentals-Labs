-- -----------------------------------------------------
-- Drop the 'library' database/schema
-- -----------------------------------------------------

DROP SCHEMA IF EXISTS library;
-- -----------------------------------------------------
-- Create 'library' database/schema and use this database
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Create 'library' database/schema and use this database
-- -----------------------------------------------------

CREATE SCHEMA IF NOT EXISTS library;

USE library;

-- -----------------------------------------------------
-- Drop tables
-- -----------------------------------------------------


-- drop table Authorship;
-- drop table Author;
-- drop table Loan;
-- drop table BookCopy;
-- drop table Book;
-- drop table Student;

-- -----------------------------------------------------
-- Create table Book
-- -----------------------------------------------------

create table Book (
ISBN varchar(15) not null,
title varchar(50) not null,
publisher varchar(30),
publishedDate date,
category varchar(30),
price decimal(5,2),
primary key (ISBN)
);

-- -----------------------------------------------------
-- Create table BookCopy
-- -----------------------------------------------------

Create table BookCopy(
copyId int auto_increment not null,
ISBN varchar(15) not null,
dateAcquired date not null,
dateDestroyed date,
primary key (copyId),
constraint fk_book foreign key(ISBN) references Book(ISBN) 
on update cascade 
on delete no action
);

-- -----------------------------------------------------
-- Create table Student
-- -----------------------------------------------------

create table Student( 
studentId varchar(9) not null,
fName varchar(20) not null,
lName varchar(20) not null,
street varchar(20) not null,
town varchar(20) not null,
county varchar(15) not null,
course varchar(5),
year tinyint(1) unsigned,
primary key (studentId)
);

-- -----------------------------------------------------
-- Create table Loan
-- -----------------------------------------------------

create table Loan(
loanId int auto_increment not null,
copyId int not null,
studentId varchar(9) not null,
dateOut date not null,
dateDue date not null,
dateBack date,
primary key (loanId),
foreign key (copyId) references BookCopy(copyId) on update cascade on delete no action,
foreign key (studentId) references Student(studentId) on update cascade on delete no action
);

-- -----------------------------------------------------
-- Create table Author
-- -----------------------------------------------------

create table Author(
authorId int auto_increment not null,
fName varchar(20) not null,
lName varchar(20) not null,
primary key (authorId)
);


-- -----------------------------------------------------
-- Create table Authorship
-- -----------------------------------------------------

create table if not exists Authorship(
authorId int  not null,
ISBN varchar(15) not null,
primary key (authorId, ISBN),
foreign key (authorId) references Author(authorId) on update cascade on delete cascade,
foreign key (ISBN) references Book(ISBN)on update cascade on delete cascade
);



-- -----------------------------------------------------
-- Populate table Book
-- -----------------------------------------------------

insert into Book values
('123675432', 'JavaScript', 'McGraw Hill', '2011-05-22','Computing', 45.00);
insert into Book values
('124523111', 'Maths for Business', 'Prentice Hall', '2010-05-03','Business', 34.00);
insert into Book values
('124568665', 'Finanacial Accounting', 'Addison Wesley', '2009-02-05','Business', 56.90);
insert into Book values
('124675432', 'jQuery for Novices', 'Sitepoint', '2014-02-21','Computing', 48.00);
insert into Book values
('124889905', 'Macro Economics', 'Prentice Hall', '2009-12-21','Business', 61.00);
insert into Book values
('125567892', 'Learning JavaScript', 'McGraw Hill', '2013-04-11','Computing', 55.00);
insert into Book values
('125987642', 'Database Design', 'Prentice Hall', '2011-08-08','Computing', 49.00);
insert into Book values
('125996711', 'JavaScript the Guide', 'McGraw Hill', '2009-02-04','Computing', 39.00);
insert into Book values
('126345676', 'Database Management', 'Addison Wesley', '2014-11-08','Computing', 53.00);
insert into Book values
('126784321', 'Financial Accounting and Reporting', 'Addison Wesley', '2013-03-05','Business', 61.00);
insert into Book values
('126788764', 'Essential Maths for Business and Management', 'Prentice Hall', '2007-05-01','Business', 38.00);
insert into Book values
('126789912', 'Mechanical Engineering Principles', 'Prentice Hall', '2014-02-19','Engineering', 45.00);
insert into Book values
('126789956', 'Engineering Mathematics', 'McGraw Hill', '2013-10-22','Engineering', 42.00);
insert into Book values
('126791245', 'The Sociology Book', 'McGraw Hill', '2013-11-15','Humanities', 63.50);
insert into Book values
('126792234', 'Introducing Psychology', 'Addison Wesley', '2010-11-08','Humanities', 66.90);

-- -----------------------------------------------------
-- Populate table BookCopy
-- -----------------------------------------------------

insert into BookCopy (ISBN, dateAcquired, dateDestroyed) values 
 ('123675432','2011-08-01', '2014-04-22');
insert into BookCopy (ISBN, dateAcquired) values
 ('123675432','2011-08-01');
insert into BookCopy (ISBN, dateAcquired) values
 ('123675432','2011-08-01');
insert into BookCopy (ISBN, dateAcquired) values
 ('123675432','2012-05-21');
insert into BookCopy (ISBN, dateAcquired) values
 ('123675432','2012-05-21');
insert into BookCopy (ISBN, dateAcquired) values
 ('123675432','2012-05-21');
insert into BookCopy (ISBN, dateAcquired) values
 ('123675432','2012-05-21');
insert into BookCopy (ISBN, dateAcquired) values
 ('124523111','2010-11-21');
insert into BookCopy (ISBN, dateAcquired) values
 ('124523111','2010-11-21');
insert into BookCopy (ISBN, dateAcquired) values
 ('124523111','2010-11-21');
insert into BookCopy (ISBN, dateAcquired) values
 ('124523111','2010-11-21');
insert into BookCopy (ISBN, dateAcquired) values
 ('124523111','2010-11-21');
insert into BookCopy (ISBN, dateAcquired, dateDestroyed) values
 ('124568665','2010-06-04', '2011-02-01');
insert into BookCopy (ISBN, dateAcquired) values
 ('124568665','2010-06-04');
insert into BookCopy (ISBN, dateAcquired) values
 ('124568665','2011-03-14');
insert into BookCopy (ISBN, dateAcquired) values
 ('124568665','2011-03-14');
insert into BookCopy (ISBN, dateAcquired) values
 ('124675432','2014-08-05');
insert into BookCopy (ISBN, dateAcquired) values
 ('124675432','2014-08-05');
insert into BookCopy (ISBN, dateAcquired) values
 ('124675432','2014-08-05');
insert into BookCopy (ISBN, dateAcquired) values
 ('124675432','2014-08-05');
insert into BookCopy (ISBN, dateAcquired) values
 ('124675432','2014-08-05');
insert into BookCopy (ISBN, dateAcquired) values
 ('124675432','2014-08-05');
insert into BookCopy (ISBN, dateAcquired) values
 ('124889905','2010-03-02');
insert into BookCopy (ISBN, dateAcquired) values
 ('124889905','2010-03-02');
insert into BookCopy (ISBN, dateAcquired) values
 ('124889905','2010-03-02');
insert into BookCopy (ISBN, dateAcquired) values
 ('125567892','2014-07-02');
insert into BookCopy (ISBN, dateAcquired) values
 ('125567892','2014-07-02');
insert into BookCopy (ISBN, dateAcquired) values
 ('125567892','2014-07-02');
insert into BookCopy (ISBN, dateAcquired) values
 ('125987642','2011-12-06');
insert into BookCopy (ISBN, dateAcquired) values
 ('125987642','2011-12-06');
insert into BookCopy (ISBN, dateAcquired) values
 ('125987642','2011-12-06');
insert into BookCopy (ISBN, dateAcquired) values
 ('125987642','2011-12-06');
insert into BookCopy (ISBN, dateAcquired) values
 ('125987642','2011-12-06');
insert into BookCopy (ISBN, dateAcquired) values
 ('125996711','2009-09-11');
insert into BookCopy (ISBN, dateAcquired) values
 ('125996711','2009-09-11');
insert into BookCopy (ISBN, dateAcquired) values
 ('125996711','2009-09-11');
insert into BookCopy (ISBN, dateAcquired) values
 ('126345676','2015-02-14');
insert into BookCopy (ISBN, dateAcquired) values
 ('126345676','2015-02-14');
insert into BookCopy (ISBN, dateAcquired) values
 ('126345676','2015-02-14');
insert into BookCopy (ISBN, dateAcquired) values
 ('126345676','2015-02-14');
insert into BookCopy (ISBN, dateAcquired) values
 ('126345676','2015-02-14');
insert into BookCopy (ISBN, dateAcquired) values
 ('126784321','2014-01-11');
insert into BookCopy (ISBN, dateAcquired) values
 ('126784321','2014-01-11');
insert into BookCopy (ISBN, dateAcquired) values
 ('126784321','2014-01-11');
insert into BookCopy (ISBN, dateAcquired) values
 ('126788764','2009-03-08');
insert into BookCopy (ISBN, dateAcquired) values
 ('126788764','2009-03-08');
insert into BookCopy (ISBN, dateAcquired) values
 ('126788764','2014-05-18');
insert into BookCopy (ISBN, dateAcquired) values
 ('126789912','2014-05-18');
insert into BookCopy (ISBN, dateAcquired) values
 ('126789912','2014-05-18'); 
insert into BookCopy (ISBN, dateAcquired) values
 ('126789912','2014-05-18'); 
insert into BookCopy (ISBN, dateAcquired) values
 ('126789956','2014-03-06'); 
insert into BookCopy (ISBN, dateAcquired) values
 ('126789956','2014-03-06');
insert into BookCopy (ISBN, dateAcquired) values
 ('126789956','2014-03-06');
insert into BookCopy (ISBN, dateAcquired) values
 ('126789956','2014-03-06');
insert into BookCopy (ISBN, dateAcquired) values
 ('126791245','2014-03-06');
insert into BookCopy (ISBN, dateAcquired) values
 ('126791245','2014-03-06');
insert into BookCopy (ISBN, dateAcquired) values
 ('126791245','2014-03-06');
insert into BookCopy (ISBN, dateAcquired) values
 ('126792234','2012-04-12');
insert into BookCopy (ISBN, dateAcquired) values
 ('126792234','2012-04-12');
insert into BookCopy (ISBN, dateAcquired) values
 ('126792234','2012-04-12');
 
-- -----------------------------------------------------
-- Populate table Student
-- -----------------------------------------------------

insert into Student values 
('20021234', 'James', 'Malone', '21 Main Street', 'Tramore', 'Waterford', 'wd151',1);
insert into Student values 
('20024527', 'Marie', 'Ryan', 'Kylerue', 'New Ross', 'Wexford', 'wd151',1);
insert into Student values 
('20026294', 'Philip', 'Walsh', 'Boherdrad', 'Cashel', 'Tipperary', 'wd153',2);
insert into Student values 
('20035123', 'James', 'Ryan', 'Tinniscully', 'The Rower', 'Kilkenny', 'wd153',1);
insert into Student values 
('20036777', 'Rose', 'Davis', '15 Main Street', 'New Ross', 'Wexford', 'wd028',1);
insert into Student values 
('20036875', 'Kevin', 'Roche', 'Rathinure', 'Glenmore', 'Kilkenny', 'wd155',1);
insert into Student values 
('20038967', 'Orla', 'Ryan', '5 Rose Lawn', 'Grace Dieu', 'Waterford', 'wd028',1);
insert into Student values 
('20041238', 'Cathy', 'Brown', 'Kill and Mill', 'Cashel', 'Tipperary', 'wd014',1);
insert into Student values 
('20045632', 'James', 'Smith', '123 Riverwalk', 'Thomastown', 'Kilkenny', 'wd015',1);
insert into Student values 
('20046145', 'Claire', 'Kelly', '11 Church Road', 'Cashel', 'Tipperary', 'wd111',1);
insert into Student values 
('20068735', 'Mairead', 'Walsh', '5 The Drive', 'Tramore', 'Waterford', 'wd151',2);
insert into Student values 
('20068990', 'Anne', 'Ryan', '14 Fishermans Grove', 'Dunmore East', 'Waterford', 'wd014',3);
insert into Student values 
('20071765', 'Eoin', 'Delaney', 'Lower South Street', 'New Ross', 'Wexford', 'wd153',3);
insert into Student values 
('20072348', 'Cathal', 'Mooney', '1 School House Road', 'New Ross', 'Wexford', 'wd155',2);
insert into Student values 
('20073421', 'Niall', 'Flynn', 'The Quay', 'Thomastown', 'Kilkenny', 'wd151',3);
insert into Student values 
('20074523', 'Tom', 'Smith', 'Upper Rosemount', 'Inistioge', 'Kilkenny', 'wd153',3);
insert into Student values 
('20075757', 'Martin', 'Roche', 'Belview', 'Slieverue', 'Kilkenny', 'wd014',2);
insert into Student values 
('20078719', 'Molly', 'Doyle', '13 The Village', 'Clonroche', 'Wexford', 'wd028',1);
insert into Student values 
('20082135', 'Steven', 'Ryan', '25 Upper Street', 'Clonmel', 'Tipperary', 'wd028',2);
insert into Student values 
('20083349', 'Paul', 'Doyle', 'The Mews', 'Sycamores', 'Kilkenny', 'wd016',1);
insert into Student values 
('20081330', 'Anne', 'Brown', '28 Main Street', 'Tramore', 'Waterford', 'wd151',2);

-- -----------------------------------------------------
-- Populate table Loan
-- -----------------------------------------------------
insert into Loan (copyId, studentId, dateOut, dateDue, dateBack) values
(2, '20026294', '2016-10-01', '2016-10-21', '2016-10-21');
insert into Loan (copyId, studentId, dateOut, dateDue, dateBack) values
(18, '20026294', '2016-10-01', '2016-10-21', '2016-10-23');
insert into Loan (copyId, studentId, dateOut, dateDue) values
(18, '20026294', '2017-09-01', '2017-09-21');
insert into Loan (copyId, studentId, dateOut, dateDue, dateBack) values
(26, '20038967', '2017-03-01', '2017-03-20', '2017-03-18');
insert into Loan (copyId, studentId, dateOut, dateDue, dateBack) values
(30, '20038967', '2017-03-01', '2017-03-20', '2017-03-18');
insert into Loan (copyId, studentId, dateOut, dateDue, dateBack) values
(8, '20081330', '2017-03-08', '2017-03-27', '2017-03-25');
insert into Loan (copyId, studentId, dateOut, dateDue, dateBack) values
(14, '20081330', '2017-03-08', '2017-03-27', '2017-03-25');
insert into Loan (copyId, studentId, dateOut, dateDue, dateBack) values
(22, '20081330', '2017-03-08', '2017-03-27', '2017-03-25');
insert into Loan (copyId, studentId, dateOut, dateDue) values
(8, '20082135', '2017-09-08', '2017-09-27');
insert into Loan (copyId, studentId, dateOut, dateDue, dateBack) values
(23, '20082135', '2017-09-08', '2017-09-27', '2017-09-22');
insert into Loan (copyId, studentId, dateOut, dateDue, dateBack) values
(15, '20075757', '2017-09-03', '2017-09-29', '2017-09-21');
insert into Loan (copyId, studentId, dateOut, dateDue, dateBack) values
(16, '20072348', '2017-09-03', '2017-09-29', '2017-09-18');
insert into Loan (copyId, studentId, dateOut, dateDue) values
(24, '20075757', '2017-09-03', '2017-09-29');

-- -----------------------------------------------------
-- Populate table Author
-- -----------------------------------------------------

insert into Author (fname, lname) values
('James',  'Cooper');
insert into Author (fname, lname) values
('Ryan',  'Finlay');
insert into Author  (fname, lname) values
('Liam',  'McFarland');
insert into Author  (fname, lname) values
('Gill',  'Moloney');
insert into Author (fname, lname) values
('Greg',  'Cooper');
insert into Author (fname, lname) values
('James',  'Smith');
insert into Author (fname, lname) values
('Alison',  'Jones');
insert into Author (fname, lname) values
('Alan',  'Freeman');
insert into Author (fname, lname) values
('Anne Marie',  'Smith');
insert into Author (fname, lname) values
('Fred',  'Adams');
insert into Author (fname, lname) values
('Fiona',  'Ryan');
insert into Author (fname, lname) values
('Nuala',  'Lynch');
insert into Author (fname, lname) values
('Kevin',  'Yank');
-- -----------------------------------------------------
-- Populate table Authorship
-- -----------------------------------------------------



insert into Authorship values 
(1,'123675432');
insert into Authorship values 
(3,'123675432');
insert into Authorship values 
(3,'124675432');
insert into Authorship values 
(2,'125567892');
insert into Authorship values 
(2,'126345676');
insert into Authorship values 
(4,'126789912');
insert into Authorship values 
(4,'126789956');
insert into Authorship values 
(4,'124523111');
insert into Authorship values 
(6,'124523111');
insert into Authorship values 
(5,'124568665');
insert into Authorship values 
(8,'124889905');
insert into Authorship values 
(7,'125987642');
insert into Authorship values 
(9,'125996711');
insert into Authorship values 
(7,'126345676');
insert into Authorship values 
(9,'126345676');
insert into Authorship values 
(5,'126784321');
insert into Authorship values 
(10,'126788764');
insert into Authorship values 
(11,'126791245');
insert into Authorship values 
(12,'126792234');


