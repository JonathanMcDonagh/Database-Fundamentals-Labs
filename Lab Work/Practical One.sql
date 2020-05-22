use library;
show tables;
desc book;
desc bookcopy;
desc student;
desc loan;
desc author;
desc authorship;

select * from book;
select * from bookcopy;
select * from student;
select * from loan;
select * from author;
select * from authorship;

SELECT title, publisher FROM book; 
SELECT title FROM book WHERE publisher = 'Addison Wesley'; 
SELECT * FROM student; 
SELECT fname, lname FROM student; 
SELECT * FROM student WHERE county = 'Waterford'; 

select fname, lname, street, town, county from student;
SELECT * FROM student WHERE county != 'Waterford';
SELECT * FROM student WHERE year = 1;

select fname as 'First Name', lname as 'Last Name' from student;
select concat(fname, ' ', lname) as Name from student;

select title as 'ComputingTitle' from book where category = 'Computing';
select distinct category from book;
select distinct publisher from book;

select county from student;
select county as 'Student County' from student;
select distinct county as 'Student County' from student;

select studentid, concat(fname, ' ', lname) as 'Student Name' from student where course = 'wd155';





