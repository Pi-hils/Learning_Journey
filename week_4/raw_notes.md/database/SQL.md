# Database
How do databases work
[Database](https://maggieappleton.com/databases).
- Databases are the storage shelves of the digital world. They are where we store all our masses of infomration.

**Interacting with databases**_(fundamental): 
**C.R.U.D** - Create, Read, Update, Delete

- Every database has a **D.B.M.S (DataBase, Management, System)** which structures how we **organise** and **interact** with all our stored _data_. They come in 2 ways.

1. **Relational**: Organizes data in tables made up of **Columns** & **rows**.

  - Columns are categories & each row inside them holds a data entry.
  - Tables are referred to as _relations_;  columns are referred to as _attributes_; and each rows as a _record_.
  - They're highly structures and have **Strict** (great for managing complex datasets) data types.
  - The pattern to which you manage all your rows, columns and tables is known as a **_Schemma_**
  - Provides accurate data as it's stored only once unless designed not to.
  - Dynamic and flexible - tables and many data can be merged together to get results.
  
  _This is where SQL comes in. We interact with the columns and rows using SQL (Structure Query Language)._ Some commands includes: _join, insert, delete, select_.

2. **Non-Relational**: _Also known as "NoSQL" (SQL is not effective here)._
    - Includes : Graph, Key Value, Document, Column Family
    - There are more flexible systems with less strictness around data types.
    - Efficient for starting a database quickly as there is no strict schema (tables, columns & rows) before adding your data.
    - Excellent for deploying data across **decentralized Distributed** networks.

Among the top 5 DBMS services, 4 are Relational and 1 is non-relational.
[![Image from Gyazo](https://i.gyazo.com/c9ba0b88fa26fb6d52075f1e5cc963e3.png)](https://gyazo.com/c9ba0b88fa26fb6d52075f1e5cc963e3)

---
Creating a column
[![Image from Gyazo](https://i.gyazo.com/95e31d8c5d402a1e64cb1c6c22e646fd.png)](https://gyazo.com/95e31d8c5d402a1e64cb1c6c22e646fd)

_Footnote_
*Decentralised Distributed netwrok* : is when data can be stored across many computers that all have to coordinate with one another.
*[SQL cheatsheet](https://blog.jasonmeridth.com/posts/postgresql-command-line-cheat-sheet/)

# Creating our 1st database.
1. Psql has 2 groups of commands
 - commands beginning with \ are psql-specific commands (e.g connecting to database \c)
 - Everything else is SQL related (e.g SELECT * FROM...) so can be used with any SQL base Retional Databse.
$\l

2. Creating Database for Bookmark Manager
CREATE DATABASE <filename>;
[![Image from Gyazo](https://i.gyazo.com/ecb906696357e6b728fa58b275193803.png)](https://gyazo.com/ecb906696357e6b728fa58b275193803)

3. Connecting to Database
To connect to the newly created database, type in: =# \c <filename>;
To inspect the existing list table, =# \dt
_it should say NO RELATIONS as there are no data yet_
[![Image from Gyazo](https://i.gyazo.com/1a2e8774562a1117be4089c91dd09256.png)](https://gyazo.com/1a2e8774562a1117be4089c91dd09256)

4. Creating a bookmark table
Data is collected in a table which has rows and columns.

The structure and contents of these tables tell you everything about what that data is. Tables are a very fast way to look up data. To make them even faster, every row in a table is normally given a unique identifier: an 'ID'.
Tables tend to map onto objects in our program that we want to persist. We're going to make a bookmarks table that will store bookmarks from our application. We can use [SQL](http://www.cheat-sheets.org/sites/sql.su/) commands from [psql](https://blog.jasonmeridth.com/posts/postgresql-command-line-cheat-sheet/)

> bookmark_manager=# CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));

[![Image from Gyazo](https://i.gyazo.com/c0607bb24ea3b75a6b6256d9bfca5b7e.png)](https://gyazo.com/c0607bb24ea3b75a6b6256d9bfca5b7e)


C.R.U.D 
you will use SQL to create, read (query), update and delete (CRUD) data in the table you created, inside your PostgreSQL database.
(https://github.com/makersacademy/course/blob/master/bookmark_manager/walkthroughs/06.md)


## Some Basic Exercise
-**SELECT**
[![Image from Gyazo](https://i.gyazo.com/9fa94d7c9955ec94b75587e18e83de01.png)](https://gyazo.com/9fa94d7c9955ec94b75587e18e83de01)

1. SELECT population FROM world
  WHERE name = 'Germany'

2. Checking a list- The word **IN** allows us to check if an item is on a list.
SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

3. **BETWEEN** allows range checking (range specified is inclusive of boundary values).
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

-**LIKE**
You can use _WHERE name LIKE_ 'B%' to find the countries that start with "B"
*_The % is a wild-card - it can match any characters_
1. SELECT name FROM world
     WHERE name LIKE 'Y%'

2. Find a specific letter at the end of a sentence.
  SELECT name FROM world
  WHERE name LIKE '%y'

3. Find the words that contain the letter x (somewhere within)
   SELECT name FROM world
    WHERE name LIKE '%x%'

4. Iceland, Switzerland end with land but are there others?
    SELECT name FROM world
      WHERE name LIKE '%land'

5. Columbia starts with a C and ends with ia - there are two more like this.
    SELECT name FROM world
      WHERE name LIKE 'C%ia'
6. Double letters
  SELECT name FROM world
    WHERE name LIKE '%oo%'

7. India and Angola have an n as the second character. You can use the underscore as a single character wildcard.
  SELECT name FROM world
     WHERE name LIKE '_t%'
  ORDER BY name

8. Lesotho and Moldova both have two o characters separated by two other characters.
Find the countries that have two "o" characters separated by two others.
** SELECT name FROM world
        WHERE name LIKE '%o__o%'

9. Find the countries that have exactly four characters.
  SELECT name FROM world
    WHERE name LIKE '____' _(4 of _)_


