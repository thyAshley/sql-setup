DROP TABLE IF EXISTS photo;

CREATE TABLE photo (
    id SERIAL PRIMARY KEY,
    url VARCHAR(200),
    user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
)

-- CREATE TABLE photo (
--     id SERIAL PRIMARY KEY,
--     url VARCHAR(200),
--     user_id INTEGER REFERENCES "user"(id) ON DELETE NULL
-- )

INSERT INTO photo (url, user_id)
VALUES
('photo.jpg', 4),
('photo.jpg', 1),
('photo.jpg', 2),
('photo2.jpg', 2),
('photo3.jpg', 2),
('photo2.jpg', 1),
('photo5.jpg', 1),
('photo6.jpg', 1),
('photo7.jpg', 1);