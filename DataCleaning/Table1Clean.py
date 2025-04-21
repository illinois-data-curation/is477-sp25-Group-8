import pandas as pd
import hashlib

df_raw = pd.read_csv('Data/animes.csv')

def hash_url(url):
    if pd.isna(url):
        return url
    return hashlib.sha256(url.encode()).hexdigest()

df = df_raw.copy()

df['link'] = df['link'].apply(hash_url)
df.drop(columns = ['img_url'], inplace = True)

df = df.drop_duplicates(subset = ['title'])

df['episodes'] = df['episodes'].fillna(df['episodes'].mean())
df['score'] = df['score'].fillna(df['score'].mean())

rename_map = {
    'uid': 'Anime ID',
    'title': 'English Title',
    'aired': 'Broadcast',
    'members': 'Viewers',
    'ranked': 'Rank',
    'link': 'Anime Link'
}

df.rename(columns = rename_map, inplace = True)
df.columns = [rename_map.get(col, col.title()) for col in df.columns]

df.to_csv('Data/animes_cleaned.csv', index = False)
