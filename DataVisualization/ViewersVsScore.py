import os
import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.ticker import FuncFormatter

df = pd.read_csv("Data/integrated_anime_data.csv")
df = df.dropna(subset = ["Score", "Viewers"])

plt.figure(figsize = (12, 8))
sc = plt.scatter(
    df["Score"],
    df["Viewers"],
    c = df["Score"],
    cmap = "turbo_r",
    alpha = 0.85,
    edgecolors = None,
    s = 60
)

cbar = plt.colorbar(sc)
cbar.set_label("Score", fontsize = 14)

plt.title("Relationship between Anime Score and Number of Viewers", fontsize = 20, weight = "bold", pad = 15)
plt.xlabel("Anime Score", fontsize = 16, labelpad = 10)
plt.ylabel("Number of Viewers", fontsize = 16, labelpad = 10)

plt.gca().yaxis.set_major_formatter(FuncFormatter(lambda x, _ : "0" if x == 0 else f"{x / 1_000_000:.0f}M"))

ax = plt.gca()
ax.spines["top"].set_visible(False)
ax.spines["right"].set_visible(False)

plt.tight_layout()

plt.savefig("Results/AnimeScoresAndViewers.png", dpi = 300)

