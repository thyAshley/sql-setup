-- for hierarchy or graph
WITH RECURSIVE suggestions(leader_id, follower_id, depth) AS (
        SELECT leader_id, follower_id, 1 As depth 
        FROM followers
        WHERE follower_id = 1000
    UNION 
        SELECT followers.leader_id, followers.follower_id, depth + 1
        FROM followers
        JOIN suggestions ON suggestions.leader_id = followers.follower_id
        WHERE depth < 3
)
SELECT count(*) from suggestions
where depth > 1