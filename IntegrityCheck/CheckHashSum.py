import hashlib
import os

stored_csv = {
    "Data/animes.csv":           "5111f7948e39b2ccdffb1d0804155a5134543be1f33c2e79082077e34dac09cf",
    "Data/characters.csv":       "0c4387754c0fb4c0c1d0c7ccc5d91d4be70ab0ce5219f65be4ff272c4dbfe952",
    "Data/myanimelist_data.csv": "a13232ec00f42afeeb50d86e7c3ea476d1704ad96c1345c4d03cdb8864714b6a"
}

def sha256sum(filename):
    with open(filename, "rb") as f:
        data = f.read()
    return hashlib.sha256(data).hexdigest()

messages = []
for csv_file, old_digest in stored_csv.items():
    current_digest = sha256sum(csv_file)
    if current_digest == old_digest:
        messages.append(
            f"{os.path.basename(csv_file)}: hash sum is the SAME "
            f"({current_digest}). You are using the same CSV file and "
            "you will get exactly the same results as our analysis."
        )
    else:
        messages.append(
            f"{os.path.basename(csv_file)}: hash sum is NOT the same "
            f"(current {current_digest} vs {old_digest}). "
            "You may get slightly different results from our analysis."
        )

os.makedirs("Results", exist_ok = True)
with open("Results/HashCheck.txt", "w") as out:
    out.write("\n".join(messages))

