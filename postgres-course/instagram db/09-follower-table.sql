CREATE TABLE followers (
    id SERIAL PRIMARY KEY,
    leader_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    follower_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    created_at TIMESTAMP WITH TIME ZONE default CURRENT_TIMESTAMP,
    UNIQUE(leader_id, follower_id)
)