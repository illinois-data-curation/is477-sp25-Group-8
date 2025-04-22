DROP TABLE IF EXISTS integrated_data;

CREATE TABLE integrated_data (
    "Anime Id"                INTEGER PRIMARY KEY,
    "Anime Type"              TEXT,
    "Anime Source"            TEXT,
    "Airing Status"           TEXT,
    "Anime Mppa Rating"       TEXT,
    Viewers                   INTEGER,
    "Viewers Who Scored"      INTEGER,
    Favorites                 INTEGER,
    "Anime Studio"            TEXT,
    "Favorite Rate (%)"       REAL,
    "Score Rate (%)"          REAL,
    "English Title"           TEXT,
    Synopsis                  TEXT,
    Genre                     TEXT,
    Broadcast                 TEXT,
    Episodes                  REAL,
    Popularity                INTEGER,
    Rank                      REAL,
    Score                     REAL,
    "Anime Link"              TEXT,
    "Character English Name"  TEXT,
    "Character Japanese Name" TEXT,
    "Character Nickname"      TEXT,
    "Character Favorites"     INTEGER,
    "Information About Character" TEXT,
    Url                       TEXT
);

INSERT INTO integrated_data
SELECT
    api."Anime Id",
    api."Anime Type",
    api."Anime Source",
    api."Airing Status",
    api."Anime Mppa Rating",
    api.Viewers,
    api."Viewers Who Scored",
    api.Favorites,
    api."Anime Studio",
    api."Favorite Rate (%)",
    api."Score Rate (%)",
    a."English Title",
    a.Synopsis,
    a.Genre,
    a.Broadcast,
    a.Episodes,
    a.Popularity,
    a.Rank,
    a.Score,
    a."Anime Link",
    c."Character English Name",
    c."Character Japanese Name",
    c."Character Nickname",
    c."Character Favorites",
    c."Information About Character",
    c.Url
FROM anime_api AS api
LEFT JOIN animes     AS a ON a."Anime Id" = api."Anime Id"
LEFT JOIN characters AS c ON c."Anime Id" = api."Anime Id";