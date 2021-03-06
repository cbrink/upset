-- 
-- Created by SQL::Translator::Producer::SQLite
-- Created on Tue Feb 23 00:03:59 2010
-- 


BEGIN TRANSACTION;

--
-- Table: list
--
CREATE TABLE list (
  id INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL
);

CREATE UNIQUE INDEX name_unique ON list (name);

--
-- Table: user
--
CREATE TABLE user (
  url TEXT NOT NULL,
  user_role TEXT NOT NULL DEFAULT 'user',
  PRIMARY KEY (url)
);

--
-- Table: message
--
CREATE TABLE message (
  id INTEGER PRIMARY KEY NOT NULL,
  date datetime NOT NULL,
  list INTEGER NOT NULL,
  author TEXT NOT NULL,
  subject TEXT NOT NULL,
  content BIGTEXT NOT NULL,
  content_type TEXT,
  message_id TEXT NOT NULL
);

CREATE INDEX message_idx_list ON message (list);

CREATE UNIQUE INDEX message_id_unique ON message (message_id);

COMMIT;
