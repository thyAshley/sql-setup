-- initial query
select users.username, tags.created_at  from users
join(
	select user_id, created_at from caption_tags 
	union all
	select user_id, created_at  from photo_tags pt2 
) as tags on users.id = tags.user_id 
where tags.created_at < '2010-01-07'


-- common table expression
WITH tags as (
    select user_id, created_at from caption_tags 
	union all
	select user_id, created_at  from photo_tags pt2 
)

select users.username, tags.created_at  from users
join tags on users.id = tags.user_id 
where tags.created_at < '2010-01-07'

-- 2 form
-- 1st form - simplify simple reading
-- 2nd form - recursive form

-- recusrive cte mainly for tree/graph type data structure (union keyword is required)
WITH RECURSIVE countdown(val) AS (
    SELECT 3 AS val --Initial, non-recursive query
    UNION
    SELECT val - 1 FROM countdown WHERE val > 1 -- Recursive query
)
SELECT * 
FROM countdown;