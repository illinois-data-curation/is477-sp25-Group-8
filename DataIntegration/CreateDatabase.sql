DROP TABLE IF EXISTS anime_api;
CREATE TABLE anime_api (
    "Anime Id" INTEGER PRIMARY KEY,
    "Anime Type" TEXT,
    "Anime Source" TEXT,
    "Airing Status" TEXT,
    "Anime Mppa Rating" TEXT,
    Viewers INTEGER,
    "Viewers Who Scored" INTEGER,
    Favorites INTEGER,
    "Anime Studio" TEXT,
    "Favorite Rate (%)" REAL,
    "Score Rate (%)" REAL
);

DROP TABLE IF EXISTS animes;
CREATE TABLE animes (
    "Anime Id" INTEGER,
    "English Title" TEXT,
    Synopsis TEXT,
    Genre TEXT,
    Broadcast TEXT,
    Episodes REAL,
    Viewers INTEGER,
    Popularity INTEGER,
    Rank REAL,
    Score REAL,
    "Anime Link" TEXT,
    FOREIGN KEY ("Anime Id") REFERENCES anime_api("Anime Id")
);

DROP TABLE IF EXISTS characters;
CREATE TABLE characters (
    "Anime Id" INTEGER,
    "Character English Name" TEXT,
    "Character Japanese Name" TEXT,
    "Character Nickname" TEXT,
    "Character Favorites" INTEGER,
    "Information About Character" TEXT,
    Url TEXT,
    FOREIGN KEY ("Anime Id") REFERENCES anime_api("Anime Id")
);
