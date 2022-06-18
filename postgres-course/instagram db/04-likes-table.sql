CREATE TABLE likes (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    post_id INTEGER REFERENCES posts(id) ON DELETE CASCADE,
    comment_id INTEGER REFERENCES comments(id) ON DELETE CASCADE,
    created_at TIMESTAMP WITH TIME ZONE default CURRENT_TIMESTAMP,
	updated_at TIMESTAMP WITH TIME ZONE default CURRENT_TIMESTAMP,
    -- check that record is only for a comment or post like and not both
    CHECK(
        COALESCE((post_id)::bool::int, 0) + COALESCE((comment_id)::bool::INTEGER, 0) = 1
    ),
    -- Like a post 1 single time
    UNIQUE(user_id, post_id, comment_id) 
)