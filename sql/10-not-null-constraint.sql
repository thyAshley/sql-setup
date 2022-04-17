-- postgres
ALTER TABLE "user"
ALTER COLUMN full_name set not null;

ALTER TABLE "user"
ALTER COLUMN full_name drop not null;

-- mysql
ALTER TABLE user
MODIFY COLUMN full_name VARCHAR(300) not null;

ALTER TABLE user
MODIFY COLUMN full_name VARCHAR(300);