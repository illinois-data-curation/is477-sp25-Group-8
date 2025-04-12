import gdown

with open("Key/Googlekey.txt", "r") as f:
    folder_id = f.readline().strip()

gdown.download_folder(id = folder_id, output = "Data", quiet = False)