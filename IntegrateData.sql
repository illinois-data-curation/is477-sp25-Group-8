DROP TABLE IF EXISTS integrated_data;
CREATE TABLE integrated_data (
    Anime_ID INTEGER PRIMARY KEY, 
    Anime_Title TEXT,
    Anime_Synopsis TEXT,
    Anime_Genres TEXT,
    Anime_Episodes REAL,
    Anime_Viewers_2025 INTEGER,
    Anime_Viewers_2020 INTEGER,
    Anime_Popularity INTEGER,
    Anime_Score REAL,
    Anime_Character_Name TEXT,
    Anime_Character_Favorites INTEGER,
    Anime_Character_Name_Kanji TEXT,
    Anime_Type TEXT,
    Anime_Source TEXT,
    Anime_Rating TEXT,
    Anime_Voted_By INTEGER,
    Anime_Favorites INTEGER,
    Anime_Studios TEXT
);

INSERT INTO integrated_data
SELECT
    t3.mal_id AS Anime_ID,
    t1.title AS Anime_Title,
    t1.synopsis AS Anime_Synopsis,
    t1.genre AS Anime_Genres,
    t1.episodes AS Anime_Episodes,
    t3.members AS Anime_Viewers_2025,
    t1.members AS Anime_Viewers_2020,
    t1.popularity AS Anime_Popularity,
    t1.score AS Anime_Score,
    (SELECT name FROM characters WHERE mal_id = t3.mal_id ORDER BY favorites DESC LIMIT 1) AS Anime_Character_Name,
    (SELECT favorites FROM characters WHERE mal_id = t3.mal_id ORDER BY favorites DESC LIMIT 1) AS Anime_Character_Favorites,
    (SELECT name_kanji FROM characters WHERE mal_id = t3.mal_id ORDER BY favorites DESC LIMIT 1) AS Anime_Character_Name_Kanji,
    t3.type AS Anime_Type,
    t3.source AS Anime_Source,
    t3.rating AS Anime_Rating,
    t3.score_by AS Anime_Voted_By,
    t3.favorites AS Anime_Favorites,
    t3.studios AS Anime_Studios
FROM anime_api AS t3
JOIN animes AS t1 ON t3.mal_id = t1.uid
GROUP BY t3.mal_id;