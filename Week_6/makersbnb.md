## MAKERSBNNB -Architectural framework

1. Create a database table in dbdiagram.io
2. Save and click 'Export to PostgreSQL
3. Once downloaded, open file in prefered text editor.
4. Make any necessary changes if needed(any code in white instead of colour).

[![Image from Gyazo](https://i.gyazo.com/925eea442d11aad74a266184c043d4ca.png)](https://gyazo.com/925eea442d11aad74a266184c043d4ca)

<u>In Terminal</u>

1. Once in psql, create database <br>
`create database "makersbnb_test";`
create database "makersbnb_production"; <br>
2. Navigate into your database <br>
`\c makersbnb_test`
3. Paste data below into your psql in terminal
```
CREATE TABLE IF NOT EXISTS "spaces" (
  "id" integer,
  "name" varchar(60),
  "price" decimal(12,2),
  "description" varchar(280),
  "availability_start" date,
  "availability_end" date,
  "bookable" boolean,
  "host_id" integer,
  "published" timestamp
);
```

4. Check the table by
`table spaces;`
