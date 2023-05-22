-- DROP DATABASE IF EXISTS mk9 WITH (FORCE);

-- CREATE DATABASE mk9;

CREATE TABLE IF NOT EXISTS framedata (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  fighter TEXT NOT NULL,
  command TEXT NOT NULL,
  name TEXT DEFAULT '~',
  execution TEXT DEFAULT '~',
  startup TEXT DEFAULT '~',
  level TEXT DEFAULT '~',
  block TEXT DEFAULT '~',
  hit TEXT DEFAULT '~',
  blockCancel TEXT DEFAULT '~',
  hitCancel TEXT DEFAULT '~',
  notes TEXT DEFAULT '~',
  image TEXT DEFAULT '~',
  UNIQUE (fighter, command)
);
