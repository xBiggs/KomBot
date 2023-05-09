DROP DATABASE mk9 IF EXISTS;

CREATE DATABASE mk9 IF NOT EXISTS;

CREATE TABLE IF NOT EXISTS mk9.fighter (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name TEXT UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS mk9.framedata (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  fighter_id INT NOT NULL REFERENCES fighter (id),
  command TEXT NOT NULL,
  name TEXT,
  execution TEXT,
  startup TEXT,
  level TEXT,
  block TEXT,
  hit TEXT,
  blockCancel TEXT,
  hitCancel TEXT,
  notes TEXT,
  image: TEXT,
  UNIQUE (id, command)
);

CREATE INDEX IF NOT EXISTS mk9.fighter_framedata ON framedata (fighter_id);
