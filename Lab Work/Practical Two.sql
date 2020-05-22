use library;

select title, publisher 
from book 
where category in('Business', 'Computing', 'Humanities');

select title, price from book
where price >= 30 and price <= 50;

select title, price from book
where price between 30 and 50;

select title from book
where title like '%math%';


select concat(fname, ' ', lname) as name
from student
where lname like 'D%';


select concat(fname, ' ', lname) as name, street, town
from student 
where town = 'Tramore';

select title, publisher from book 
where publisher = 'Sitepoint';

select title, publisher from book
where title like 'Database%';

select title, publisher from book
where title like '%Engineering%';

select concat(fname, ' ', lname) as name
from student
where lname like 'D%';

select concat(fname, ' ', lname) as name, town
from student 
where county in('Kilkenny', 'Waterford', 'Wexford');

select * from book 
where publishedDate between '2007-02-01' and '2013-01-31'; 

select concat(fname, ' ', lname) as name from student 
where year = 1 and county = 'Waterford';


select title, price from book
where title like '%Database%' and price <= 50;

select concat(fname, ' ', lname) as name from student 
where lname like 'Ryan%'
order by fname;

select price, title from book
where category = 'Business'
order by price desc, title;
















