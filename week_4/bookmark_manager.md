## Notes on Bookmark Manager Pair session

# Manipulating Data Table
## Using SELECT to view the table
From psql, list all the existing bookmarks:

_* - Ensure you are inside the bookmark file, by doing \c <filename(e.g bookmark_manager)> to connect._

_* - To view your table, \dt._

_* - Ensure that you have http annd no back slash at the end of the link._

_* - Display table information : TABLE bookmarks;_
bookmark_manager=# SELECT * FROM bookmarks;
This command displays all columns from the table "bookmarks" and shows us an empty table:

2. Using **INSERT** to add data to a table
Manual ID
We can add data using INSERT in a very manual way:

bookmark_manager=# INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');

3. **INSERT, SELECT**
[![Image from Gyazo](https://i.gyazo.com/e90b7e0c80bda842bca79668666a265b.png)](https://gyazo.com/e90b7e0c80bda842bca79668666a265b)

4. **DELETE**
DELETE FROM bookmarks WHERE url = 'http://www.twitter.com';

5. **UPDATE**
To update a table row, we can do this:

UPDATE bookmarks SET url = 'http://www.destroyallsoftware.com' WHERE url = 'http://www.askjeeves.com';

# Interacting with PostgreSQL from Ruby

 1. ### Install pg
[![Image from Gyazo](https://i.gyazo.com/ba1ef3d9f3a448938f660506b5dd777e.png)](https://gyazo.com/ba1ef3d9f3a448938f660506b5dd777e)
Input <bundle install> within terminal.

[![Image from Gyazo](https://i.gyazo.com/f9e8678de777d4ace20eca9a9387a753.png)](https://gyazo.com/f9e8678de777d4ace20eca9a9387a753)


**ERRORS INCURED**

**Issue:** Duplicate keys 
**Solution** - url was missing hence the key was hard coded.

Setup_test_database 
**Issue:** truncate wasn't working(was not emptying the table). 
**Solution:** There was a typo but first must cd into the spec file (or the folder that your file is in) and do the 
```
ruby setup_test_database.rb
```
This should now delete all your files.

[![Image from Gyazo](https://i.gyazo.com/a80cbe09bb267a751ab1f72bdd39f065.png)](https://gyazo.com/a80cbe09bb267a751ab1f72bdd39f065)

**Solution**: Error doesn't recognise 'url' as

[![Image from Gyazo](https://i.gyazo.com/5d6e6c4d8194e32336e4480b16e97ee8.png)](https://gyazo.com/5d6e6c4d8194e32336e4480b16e97ee8)
**Solution**:'< Sinatra::Base' was not added to the class in app.rb


**To go over step 10()

**ORM**
**Object-relational mapping** (ORM, O/RM, and O/R mapping) in computer software is a programming technique for converting data between incompatible type systems in relational databases and object-oriented programming languages. This creates, in effect, a "virtual object database" that can be used from within the programming language


Wrapping database data in a Ruby object

- **Adding a column to db
```
ALTER TABLE table_name ADD COLUMN new_column_name TYPE;

ALTER TABLE bookmarks ADD COLUMN title VARCHAR(60);
```

To re-visit chapter 11.

---
# ORDER FOR TEST
Updating Bookmarks
As always, our flow is:

Requirement
User Story
Feature Test
Unit Tests
Implementation
Refactoring