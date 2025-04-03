import requests
import pandas as pd
import time
import os

if not os.path.exists('data'):
    os.makedirs('data')
    print("Created 'data' directory for storing results")

def make_api_request(url):
    try:
        response = requests.get(url)
        if response.status_code == 200:
            return response.json()
    except Exception as e:
        print(f"An error occurred during API request: {str(e)}")
        return None

def extract_anime_fields(anime):
    score_by = anime.get('scored_by')
    favorites = anime.get('favorites')
    studios = anime.get('studios')
    members = anime.get('members')

    return {
        'mal_id': anime.get('mal_id'),
        'type': anime.get('type'),
        'source': anime.get('source'),
        'airing': anime.get('airing'),
        'rating': anime.get('rating'),
        'members': 0 if members is None else members,
        'score_by': 0 if score_by is None else score_by,
        'favorites': 0 if favorites is None else favorites,
        'studios': None if studios is None else ', '.join([studio['name'] for studio in studios])
    }

with open("apikey.txt", "r") as f:
    apikey = f.readline().strip()
    
def fetch_anime_data(total_results):
    base_url = apikey
    all_data = []
    page = 1
    results_count = 0

    while results_count < total_results:
        url = f"{base_url}?page={page}"
        data = make_api_request(url)
        
        if data and 'data' in data and data['data']:
            for anime in data['data']:
                extracted_data = extract_anime_fields(anime)
                all_data.append(extracted_data)
                results_count += 1

                if results_count >= total_results:
                    break

            page += 1
            
            time.sleep(0.25)
    return pd.DataFrame(all_data)

def run_extraction(total_results):

    anime_df = fetch_anime_data(total_results)
    csv_filename = "data/myanimelist_data.csv"
    anime_df.to_csv(csv_filename, index=False)

    print(f"Data successfully saved to {csv_filename}")
    print(f"Total entries saved: {len(anime_df)}")

    return anime_df

if __name__ == "__main__":
    anime_df = fetch_anime_data(130)
    
    csv_filename = "data/myanimelist_data.csv"
    anime_df.to_csv(csv_filename, index=False)
    print(f"Data successfully saved to {csv_filename}")
    print(f"Total entries saved: {len(anime_df)}")