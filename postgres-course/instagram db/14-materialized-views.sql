-- VIEWS
-- query that get executed everytime you refer to it

-- MATERIALIZED VIEW
-- query get executed at specific time (will be saved without rerunning the query, expensive query)
-- underlying data modification does not update cache results.

CREATE MATERIALIZED VIEW weekly_likes AS (
    SELECT 
        DATE_TRUNC('week', COALESCE(comments.created_at, posts.created_at)) AS week, 
        COUNT(posts.id) AS num_posts, 
        COUNT(comments.id) AS num_comments 
    FROM likes
    LEFT JOIN posts ON posts.id  = likes.post_id 
    LEFT JOIN comments ON comments.id = likes.comment_id 
    GROUP BY week
    ORDER BY week
) WITH DATA;

REFRESH MATERIALIZED VIEW weekly_likes;