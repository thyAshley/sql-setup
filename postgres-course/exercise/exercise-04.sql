CREATE TABLE boats (
    id SERIAL PRIMARY KEY,
    name VARCHAR
)

INSERT INTO boats (name)
VALUES 
('rogue'),
('harbor');

CREATE TABLE crew_members (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    boat_id INTEGER REFERENCES boats(id)
)

INSERT INTO crew_members (first_name, boat_id)
VALUES 
('Alex', 1),
('Lucia', 2),
('Ari', 1);

SELECT * from crew_members where crew_members.boat_id = 1