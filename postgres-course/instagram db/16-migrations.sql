ALTER TABLE comments
RENAME COLUMN contents TO body; 

-- can be written in any language 
-- up (new changes)
ALTER TABLE comments RENAME COLUMN contents TO body;

-- down (revert)
ALTER TABLE comments RENAME COLUMN body TO contents;

-- Migration table is created to keep track of migration changes