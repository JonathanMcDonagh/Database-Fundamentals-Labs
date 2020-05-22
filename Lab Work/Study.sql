use movies;

show tables;

desc film;
desc rating;
desc reviewer;

select title from film where director = 'Steven Spielberg';

select title, releaseYear from film where releaseYear between 1940 and 1990 group by title;

select title, length from film where length>=110 group by title;

select title, director from film where director like '% C%';

select stars, fID  as 'film ID', ratingDate from rating 
where stars >=4 order by stars desc;

select rID, ratingDate from rating where ratingDate is null;

select count(fID) as 'Number of Films' from film;

select count(rID) as 'Number of Reviews' from reviewer;

select count(stars) as 'Number of Ratings' from rating;

select count(fID) as 'Number of Films', director from film group by director;

select count(rID) as 'Number of Reviewers', name from reviewer group by name;

select round(avg(length), 0) as 'Average Number of Minutes per Film', director from film group by director;








