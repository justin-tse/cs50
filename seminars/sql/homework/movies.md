Run wget https://cdn.cs50.net/2021/x/seminars/sql/movies.db
Write a SQL query to answer each of the following questions.

1. What are the titles of all movies released in 2008?
sqlite> SELECT title FROM movies WHERE year = 2008;

2. In what year was Emma Stone born?
sqlite> SELECT birth FROM people WHERE name = "Emma Stone";
1988

3. How many movies have an IMDb rating of 10.0?
sqlite> SELECT COUNT(title) FROM movies WHERE id IN
   ...> (SELECT movie_id FROM ratings WHERE rating = 10.0);
45

4. What are the titles and release years of all Harry Potter movies, in chronological order?
sqlite> SELECT title, year FROM movies WHERE title LIKE "%Harry Potter %" ORDER BY year;
Harry Potter and the Sorcerer's Stone|2001
Harry Potter and the Chamber of Secrets|2002
Harry Potter and the Prisoner of Azkaban|2004
Harry Potter and the Goblet of Fire|2005
Harry Potter and the Order of the Phoenix|2007
Harry Potter and the Half-Blood Prince|2009
Harry Potter and the Deathly Hallows: Part 1|2010
Harry Potter and the Deathly Hallows: Part 2|2011
Harry Potter and the Untold Stories of Hogwarts|2012
The Harry Potter Saga Analyzed|2018
Darla's Book Club: Discussing the Harry Potter Series|2020

5. Who starred in Toy Story?
sqlite> SELECT name FROM people WHERE id IN
   ...> (SELECT person_id FROM stars WHERE movie_id =
   ...> (SELECT id FROM movies WHERE title = "Toy Story"));
Tom Hanks
Tim Allen
Jim Varney
Don Rickles

6. What are the movies in which both Johnny Depp and Helena Bonham Carter starred?
sqlite> SELECT title FROM movies WHERE id IN
   ...> (SELECT movie_id FROM stars WHERE person_id =
   ...> (SELECT id FROM people WHERE name = "Johnny Depp"))
   ...> INTERSECT
   ...> SELECT title FROM movies WHERE id IN
   ...> (SELECT movie_id FROM stars WHERE person_id =
   ...> (SELECT id FROM people WHERE name = "Helena Bonham Carter"));
Alice Through the Looking Glass
Alice in Wonderland
Charlie and the Chocolate Factory
Corpse Bride
Dark Shadows
Sweeney Todd: The Demon Barber of Fleet Street