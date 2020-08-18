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

CREATE TABLE IF NOT EXISTS "user" (
  "id" integer,
  "name" varchar(60),
  "email" varchar(60),
  "password" varchar(60)
);

CREATE TABLE IF NOT EXISTS "requests" (
  "id" integer,
  "space_id" integer,
  "guest_id" integer,
  "accepted" boolean
);

CREATE TABLE IF NOT EXISTS "user_messages" (
  "id" integer,
  "thread_id" integer,
  "message_id" integer,
  "user_id" integer
);

CREATE TABLE IF NOT EXISTS "messages" (
  "id" integer,
  "content" varchar(280),
  "published" date,
  "poster_id" integer
);

ALTER TABLE "requests" ADD FOREIGN KEY ("space_id") REFERENCES "spaces" ("id");

ALTER TABLE "requests" ADD FOREIGN KEY ("guest_id") REFERENCES "user" ("id");

ALTER TABLE "spaces" ADD FOREIGN KEY ("host_id") REFERENCES "user" ("id");

ALTER TABLE "user_messages" ADD FOREIGN KEY ("thread_id") REFERENCES "requests" ("id");

ALTER TABLE "user_messages" ADD FOREIGN KEY ("user_id") REFERENCES "user" ("id");

ALTER TABLE "user_messages" ADD FOREIGN KEY ("message_id") REFERENCES "messages" ("id");