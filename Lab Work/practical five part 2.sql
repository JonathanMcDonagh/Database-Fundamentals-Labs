use movies;

select rID, title, director, stars 
from film join rating
on film.fID = rating.fID;

select count(*) as 'Number of Chris Reviews'
from rating join reviewer 
on rating.rID = reviewer.rID
where name = 'Chris Jackson';

select count(*) as 'Number of Reviews', name
from rating join reviewer 
on rating.rID = reviewer.rID group by name;

select count(*) as 'Number of Films', title
from film join reviewer 
on film.fID = reviewer.fID group by name;



