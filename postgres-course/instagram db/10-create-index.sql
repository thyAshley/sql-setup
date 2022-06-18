EXPLAIN ANALYZE
SELECT * FROM users
WHERE users.username  = 'Emil30';

CREATE INDEX username_idx ON users (username);

DROP INDEX username_idx;

-- to check the size the table is taking
select pg_size_pretty(pg_relation_size('users'))
-- to check the size the index is taking
select pg_size_pretty(pg_relation_size('username_idx'))

-- index slowdown basic cud but increase read speed

-- INDEX TYPE
-- B-Tree (general purpose)
-- BRIN - large dataset
-- GIN - array or json
-- Hash - speed up equality
-- Gist - geometry full text search

-- Unique index and primary key has index automatically created

-- list out all indexes
select relname, relkind from pg_class where relkind = 'i'