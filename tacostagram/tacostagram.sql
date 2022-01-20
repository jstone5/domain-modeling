/* tables
- profile
- likes
- comments
- post
- users

*/

-- CREATE TABLES
CREATE TABLE profile (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  location TEXT
);

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  location TEXT
);

CREATE TABLE post (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  filename TEXT,
  user_id TEXT,
  caption TEXT,
  timestamp TEXT,
  location TEXT
);

CREATE TABLE comment (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  comment_text TEXT,
  post_id TEXT,
  user_id TEXT,
  timestamp TEXT,
  location TEXT
);

CREATE TABLE like (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  post_id TEXT,
  user_id TEXT,
  timestamp TEXT
);

CREATE TABLE follow (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  profile_id TEXT,
  user_id TEXT,
  follow_direction TEXT, -- 1 if you follow someone; 0 if someone follows you
  timestamp TEXT
);