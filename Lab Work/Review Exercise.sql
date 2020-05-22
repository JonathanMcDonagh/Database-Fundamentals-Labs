use movies;

show tables;

desc film;
desc rating;
desc reviewer;

select title, director from film where director = 'Steven Spielberg';

select title, releaseYear from film where releaseYear between 1940 and 1990 order by title;

select title, length from film where length>=110 order by title;

select title, director from film where director like '% C%';

select stars, fid as 'Film Id', ratingdate from rating where stars between 4 and 5 order by stars desc, fid asc;

select rid from rating where ratingDate is null;

select count(*) as 'Number of Films' from film;

select count(*) as 'Number of Reviewers' from reviewer;

select count(*) as 'Number of Ratings' from rating;

select director, count(*) as 'Number of Films' from film group by director;



select director, round(avg(length)) as 'Average Number of Minutes per film' from film group by director;

SELECT fID as 'Film Id', COUNT(*) as 'Number of Reviews'
from rating group by fId having count(*) >= all (select COUNT(*)  
from rating group by fId);



