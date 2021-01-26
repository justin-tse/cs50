## SQL
### id
### show_id, genre  in another table
### show_id, name
- show_id can repeat
- 
Open this [spreadsheet](https://docs.google.com/spreadsheets/d/e/2PACX-1vRfpjV8pF6iNBu5xV-wnzHPXvW69wZcTxqsSnYqHx126N0bPfVhq63UtkG9mqUawB4tXneYh31xJlem/pubhtml) and use it to answer the following questions.
1. In what year did Black Mirror first air?
2011

2. What genres are associated with the show Stranger Things?
4574334	Drama
4574334	Fantasy
4574334	Horror

3. Who are the stars of The Office?
386676	1526554  Angela Kinsey	
386676	136797  Steve Carell	
386676	278979  Jenna Fischer	
386676	1024677  John Krasinski	
386676	933988  Rainn Wilson	
386676	1534715  Leslie David Baker	
386676	1580911  Brian Baumgartner	


4. Which shows has Jennifer Aniston starred in?
Friends	
1.Go to people table search person_id 98
98 repeat in different numbers, So we need to use SQL to solve this problem

2.Then go to starts table search show_id
3.Then Go to show table search show Tv

Command line
wget https://cdn.cs50.net/2021/x/seminars/sql/shows.db   

sqlite3 shows.db

.schema

PRIMARY KEY(id) unque the id

```shell
sqlite> .schema
CREATE TABLE shows (
                    id INTEGER,
                    title TEXT NOT NULL,
                    year NUMERIC,
                    episodes INT,
                    PRIMARY KEY(id)
                );
CREATE TABLE genres (
                    show_id INTEGER NOT NULL,
                    genre TEXT NOT NULL,
                    FOREIGN KEY(show_id) REFERENCES shows(id)
                );
CREATE TABLE stars (
                show_id INTEGER NOT NULL,
                person_id INTEGER NOT NULL,
                FOREIGN KEY(show_id) REFERENCES shows(id),
                FOREIGN KEY(person_id) REFERENCES people(id)
            );
CREATE TABLE writers (
                show_id INTEGER NOT NULL,
                person_id INTEGER NOT NULL,
                FOREIGN KEY(show_id) REFERENCES shows(id),
                FOREIGN KEY(person_id) REFERENCES people(id)
            );
CREATE TABLE ratings (
                show_id INTEGER NOT NULL,
                rating REAL NOT NULL,
                votes INTEGER NOT NULL,
                FOREIGN KEY(show_id) REFERENCES shows(id)
            );
CREATE TABLE people (
                id INTEGER,
                name TEXT NOT NULL,
                birth NUMERIC,
                PRIMARY KEY(id)
            );
```
SELECT * FROM shows;

SELECT * FROM shows WHERE title = "Black Mirror";

SELECT * FROM shows WHERE title = "The Office";

SELECT * FROM shows WHERE year > 2020;

Count the number
SELECT COUNT(*) FROM shows WHERE year > 2020;

SELECT * FROM shows WHERE title = "Titanic";

SELECT * FROM shows WHERE title LIKE '%Titanic%';

SELECT * FROM shows WHERE title = 'Stranger Things';

SELECT * FROM shows WHERE title = 'Stranger Things' AND year = 2016;

SELECT genre FROM genres WHERE show_id = 4574334;


SELECT * FROM genres WHERE show_id =
(SELECT id FROM shows WHERE title = 'Stranger Things' AND year = 2016);



SELECT * FROM shows WHERE title = "The Office" ORDER BY episodes;
The dafult is ascending(ASC)

SELECT * FROM shows WHERE title = "The Office" ORDER BY episodes DESC;
descending is DESC

sqlite> SELECT * FROM shows WHERE title = "The Office" ORDER BY episodes DESC LIMIT 1;
id | title | year | episodes
386676 | The Office | 2005 | 188

SELECT person_id FROM stars WHERE show_id = 386676;
person_id
1526554
136797
278979
1024677
933988
1534715
1580911

sqlite> SELECT name FROM people WHERE id IN
   ...> (SELECT person_id FROM stars WHERE show_id = 386676);
name
Steve Carell
Jenna Fischer
Rainn Wilson
John Krasinski
Angela Kinsey
Leslie David Baker
Brian Baumgartner

- The difference between IN  and EQUAL 

Activity 2

Run wget https://cdn.cs50.net/2021/x/seminars/sql/shows.db
Write a SQL query to answer each of the following questions.
1. In what year was Jerry Seinfeld born?
SELECT * FROM people WHERE name = "Jerry Seinfeld";
id | name | birth
632 | Jerry Seinfeld | 1954

2. How many shows have a perfect 10.0 rating?
SELECT COUNT(*) FROM ratings WHERE rating == 10.0;
COUNT(*)
27

3. What genres are associated with the show The Crown?
sqlite> SELECT * FROM genres WHERE show_id =
   ...> (SELECT id FROM shows WHERE title = "The Crown");
show_id | genre
4786824 | Drama
4786824 | History

4. Who wrote Arrested Development?
SELECT id FROM shows WHERE title = "Arrested Development";
SELECT person_id FROM writers WHERE show_id = 367279;
SELECT name FROM people WHERE id = 403804;

sqlite> SELECT name FROM people WHERE id = 
   ...> (SELECT person_id FROM writers WHERE show_id =
   ...> (SELECT id FROM shows WHERE title = "Arrested Development"));
name
Mitchell Hurwitz

5. What shows has Allison Janney starred in?
- Must be carefull the difference between = and IN:
sqlite> SELECT title FROM shows WHERE id =
   ...> (SELECT show_id FROM stars WHERE person_id = 
   ...> (SELECT id FROM people WHERE name = "Allison Janney"));
title
Morton & Hayes

sqlite> SELECT title FROM shows WHERE id IN
   ...> (SELECT show_id FROM stars WHERE person_id = 
   ...> (SELECT id FROM people WHERE name = "Allison Janney"));
title
Morton & Hayes
The West Wing
The Richard and Judy Show
The EcoZone Project
Mr. Sunshine
Mom
The Adventures of Mr. Clown
Break a Hip
The Late Late Show with James Corden
I'll Have What Phil's Having

CRT + C
wget https://cdn.cs50.net/2021/x/seminars/sql/fiftyville.db  

sqlite3 fiftyville.db 

.schema

sqlite> SELECT * FROM crime_scene_reports LIMIT 3;



Run wget https://cdn.cs50.net/2021/x/seminars/sql/fiftyville.db
The CS50 Duck has been stolen! The town of Fiftyville has called upon you to solve the mystery of the stolen duck. Authorities believe that the thief stole the duck and then, shortly afterwards, took a flight out of town with the help of an accomplice. Your goal is to identify:
1. Who the thief is,
2. What city the thief escaped to, and
3. Who the thief's accomplice is who helped them escape

All you know is that the theft took place on July 28
and that it took place on Chamberlin Street.
Come up with a list of suspects.

Answer:
1. Who the thief is,
SELECT id FROM crime_scene_reports WHERE street = "Chamberlin Street" AND month = 7 and day = 28;
id
295

id | year | month | day | street | description
295 | 2020 | 7 | 28 | Chamberlin Street | Theft of the CS50 duck took place at 10:15am at the Chamberlin Street courthouse. Interviews were conducted today with three witnesses who were present at the time — each of their interview transcripts mentions the courthouse.

SELECT id FROM interviews WHERE year = 2020 AND month = 7 and day = 28;

SELECT id FROM courthouse_security_logs WHERE hour = 10 AND minute = 15;

2. What city the thief escaped to, and
3. Who the thief's accomplice is who helped them escape


TEACHER:
SELECT id FROM crime_scene_reports WHERE street = "Chamberlin Street" AND month = 7 and day = 28;

SELECT * FROM interviews WHERE month = 7 AND day = 28 AND transcript LIKE "%courthouse%";

SELECT id FROM courthouse_security_logs WHERE hour = 10 AND minute = 15;

sqlite> SELECT id FROM courthouse_security_logs WHERE hour = 10 AND minute = 15;

sqlite> SELECT * FROM courthouse_security_logs WHERE id = 459;
id | year | month | day | hour | minute | activity | license_plate
459 | 2020 | 7 | 31 | 10 | 15 | exit | 11J91FW

.schema people

SELECT name FROM people WHERE license_plate IN
(SELECT license_plate FROM courthouse_security_logs WHERE month = 7 AND day = 28
AND hour = 10 AND minute >= 15 AND minute <= 25 AND activity = "exit");

## Basic control
- sqlite3 and then .open ??.db
- sqlite3 ??.db
In sqlite>  state
- .help
can see Usage for command-lines
- .show
Show the current values for various settings
- .open ?OPTIONS? ?FILE?
Close existing database and reopen FILE
- .headers on|off  
Turn display of headers on or off