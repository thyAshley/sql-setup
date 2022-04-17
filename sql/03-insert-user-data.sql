-- MYSQL
INSERT INTO user 
VALUES ('User A', 50000, 'employed');

INSERT INTO user 
(`full_name`, `status`, `salary`) 
VALUES ('User B', 'employed', 40000);

INSERT INTO user
(`full_name`, `status`, `salary`)
VALUES ('User C', 'unemployed', NULL), ('User D', 'self-employed', 100000);

-- POSTGRES
INSERT INTO "user" 
VALUES ('User A', 50000, 'employed');
INSERT INTO "user" 
("full_name", "status", "salary") 
VALUES ('User B', 'employed', 40000);

INSERT INTO "user"
('full_name', 'status', 'salary')
VALUES ('User C', 'unemployed', NULL), ('User D', 'self-employed', 100000);