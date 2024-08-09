CREATE TABLE IF NOT EXISTS users (
    user_id TEXT PRIMARY KEY,
	full_name VARCHAR(255),
    alias VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- INSERT INTO users (user_id, full_name, alias, email, password)
-- VALUES ('1', 'John Doe', 'johndoe', 'john@mail.com', 'password');

