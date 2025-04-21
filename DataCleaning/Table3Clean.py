import pandas as pd

df = pd.read_csv('Data/myanimelist_data.csv')

df['Favorite Rate (%)'] = ((df['favorites'] / df['members']) * 100).round(2)
df['Score Rate (%)'] = ((df['score_by'] / df['members']) * 100).round(2)

rename_map = {
    'mal_id': 'Anime ID',
    'type': 'Anime Type',
    'source': 'Anime Source',
    'airing': 'Airing Status',
    'rating': 'Anime MPPA Rating',
    'members': 'Viewers',
    'score_by': 'Viewers Who Scored',
    'favorites': 'Favorites',
    'studios': 'Anime Studio'
}

df.rename(columns = rename_map, inplace = True)
df.columns = [rename_map.get(col, col.title()) for col in df.columns]

df.to_csv('Data/myanimelist_data_cleaned.csv', index = False)