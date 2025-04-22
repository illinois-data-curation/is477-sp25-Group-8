import pandas as pd
import hashlib

df_raw = pd.read_csv('Data/characters.csv')

def hash_url(url):
    if pd.isna(url):
        return url
    return hashlib.sha256(url.encode()).hexdigest()

df = df_raw.copy()

df['url'] = df['url'].apply(hash_url)
df.drop(columns = ['main_picture'], inplace = True)

rename_map = {
    'mal_id': 'Anime ID',
    'name': 'Character English Name',
    'name_kanji': 'Character Japanese Name',
    'nicknames': 'Character NickName',
    'favorites': 'Character Favorites',
    'about': 'Information About Character',
    'URL': 'Character Link'
}

df.rename(columns=rename_map, inplace = True)
df.columns = [rename_map.get(col, col.title()) for col in df.columns]

df.to_csv('Data/characters_clean.csv', index = False)
