CREATE TABLE "user" (
 id SERIAL PRIMARY KEY,
 username VARCHAR(50)
)

INSERT INTO "user" (username)
VALUES 
('UserA'),
('UserB'),
('UserC'),
('UserD');