use library;

select * from book;
select * from bookcopy;

select * from book join bookcopy
on book.isbn = bookcopy.isbn;

select * from student;
select * from loan;

select * from student join loan
on student.studentId = loan.studentid;

select * from bookcopy;
select * from book;

select copyId, title, publisher, dateAcquired 
from book join bookcopy
on book.isbn = bookcopy.isbn
where dateAcquired >= '2013-01-01' order by title;

select distinct concat(fname, ' ', lname) as 'name'  
from student join loan 
on student.studentid = loan.studentid;


select distinct dateOut, dateDue, dateBack, concat(fname, ' ', lname) as 'name'  
from student join loan 
on student.studentid = loan.studentid 
where dateBack is null;

select concat (fname, ' ', lname) as 'name', copyId, dateOut, dateBack
from student join loan 
on student.studentid = loan.studentid;
 
select distinct copyId, title
from book join bookcopy
on book.isbn = bookcopy.isbn 
where dateDestroyed is null;

select count(copyId) as 'Number of Books', title
from book join bookcopy
on book.isbn = bookcopy.isbn
where title like '%Database%' group by title;

select count(loanId) as 'Number of Loans', 
concat(fname, ' ', lname) as 'name' 
from loan join student
on loan.studentId = student.studentId group by name;

select count(loanId) as 'Number of Loans', dateBack,
concat(fname, ' ', lname) as 'name' 
from loan join student
on loan.studentId = student.studentId
where dateBack is null group by name;










