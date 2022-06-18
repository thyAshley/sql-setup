-- Original queries

WITH tags AS (
    SELECT user_id FROM caption_tags 
	UNION ALL
	SELECT user_id FROM photo_tags
)
SELECT users.username, count(*) FROM users
LEFT JOIN tags on users.id  = tags.user_id 
GROUP BY users.username 
ORDER BY count(*) DESC
LIMIT 10

-- views - like a fake table with data from other tables
-- very similar to a CTE but we can create it ahead of time and use it in any query
CREATE VIEW tags AS (
    SELECT id, created_at, user_id, post_id, 'photo_tag' AS type FROM photo_tags
    UNION ALL
    SELECT id, created_at, user_id, post_id, 'caption_tag' AS TYPE FROM caption_tags
)

SELECT users.username, count(*) FROM users
LEFT JOIN tags on users.id  = tags.user_id 
GROUP BY users.username 
ORDER BY count(*) DESC
LIMIT 10


CREATE VIEW recent_posts AS (
    SELECT * FROM posts
    ORDER BY created_at DESC
    LIMIT 10
)