use library;

select count(*) as 'No. of Students' from student;

select county, count(*) as 'No. of Students' from student where county = 'Waterford';

select title, count(*) from book where title like '%Database%';

select max(price) from book;

select min(price) from book;

select round(avg(price), 2) from book;

select county, count(*) from student group by county;

select count(*) from bookcopy;

select ISBN, count(*) as 'Number of Copies' from bookcopy group by ISBN;

select category, count(*) as 'Books Per Category' from book group by category;

select category, count(*) as 'Books Per Category' from book group by category having count(*)>=3;

select publisher, min(price) as 'Min', max(price) as 'Max'  from book group by publisher; 

select publisher, max(price) as 'Max'  from book group by publisher having max(price)>=60;


select title, price from book where price = 
(select min(price) from book); 

select title, price from book where price = 
(select max(price) from book); 









