CREATE TABLE IF NOT EXISTS "users" (
  "id" varchar PRIMARY KEY,
  "username" varchar,
  "email" varchar,
  "password" varchar,
  "person_id" varchar
);
CREATE INDEX idx_users_id ON "users" ("id");

CREATE TABLE IF NOT EXISTS "person" (
  "id" varchar PRIMARY KEY,
  "name" varchar,
  "birth" varchar,
  "sex" varchar,
  "profile" varchar,
  "phone_number" varchar
);
CREATE INDEX idx_person_id ON "person" ("id");

CREATE TABLE IF NOT EXISTS "receipt" (
  "id" varchar PRIMARY KEY,
  "user_id" varchar,
  "title" varchar,
  "body" text,
  "like" int,
  "comment" varchar,
  "status" varchar,
  "created_at" timestamp
);
CREATE INDEX idx_receipt_id ON "receipt" ("id");
CREATE INDEX idx_receipt_title ON "receipt" ("title");

COMMENT ON COLUMN "receipt"."body" IS 'Content of the post';

ALTER TABLE "receipt" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");
ALTER TABLE "users" ADD FOREIGN KEY ("person_id") REFERENCES "person" ("id");
