DROP TABLE IF EXISTS animes;
CREATE TABLE animes (
    uid INTEGER,
    title TEXT,
    synopsis TEXT,
    genre TEXT,
    aired TEXT,
    episodes REAL,
    members INTEGER,
    popularity INTEGER,
    ranked REAL,
    score REAL,
    img_url TEXT,
    link TEXT
);

DROP TABLE IF EXISTS characters;
CREATE TABLE IF NOT EXISTS characters (
    mal_id INTEGER,
    name TEXT,
    name_kanji TEXT,
    nicknames TEXT,
    favorites INTEGER,
    about TEXT,
    main_picture TEXT,
    url TEXT
);

DROP TABLE IF EXISTS anime_api;
CREATE TABLE IF NOT EXISTS anime_api (
    mal_id INTEGER,
    type TEXT,
    source TEXT,
    airing BOOLEAN,
    rating TEXT,
    members INTEGER,
    score_by INTEGER,
    favorites INTEGER,
    studios TEXT
);