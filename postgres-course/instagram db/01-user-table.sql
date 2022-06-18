-- doesnt matter valu exist => ""
-- Must not be null and provided => "NOT NULL"
-- Must not be null but optional => "NOT NULL DEFAULT"

CREATE TABLE users (
	id SERIAL PRIMARY KEY,
    username VARCHAR(30) NOT NULL,
    bio VARCHAR(400),
    avatar VARCHAR(200),
    phone VARCHAR(25),
    email VARCHAR(40),
    password VARCHAR(50),
    status VARCHAR(15),

	created_at TIMESTAMP WITH TIME ZONE default CURRENT_TIMESTAMP,
	updated_at TIMESTAMP WITH TIME ZONE default CURRENT_TIMESTAMP,

    CHECK(COALESCE(phone, email) IS NOT NULL)
)