import pandas as pd
import numpy as np
import os
import matplotlib.pyplot as plt
import matplotlib as mpl
from matplotlib import colors as mcolors

df = pd.read_csv("Data/integrated_anime_data.csv")
df = df.dropna(subset = ["Genre", "Score"])

df["Genre Clean"] = df["Genre"].str.strip("[]")
df["Genre List"] = df["Genre Clean"].str.split(r",\s*")

df = df.explode("Genre List")
df["Genre List"] = df["Genre List"].str.strip()

grouped = df.groupby("Genre List").agg(Freq = ("Score", "size"), Avg = ("Score", "mean")).reset_index()

top = grouped.sort_values("Freq", ascending = False).head(15)

top = top.sort_values("Avg", ascending = False).reset_index(drop = True)

N = len(top)
angles = np.linspace(0, 2 * np.pi, N, endpoint = False)
width = 2 * np.pi / N

norm = mcolors.Normalize(top["Avg"].min(), top["Avg"].max())
colormap = mpl.colormaps["viridis_r"]
bar_colors = colormap(norm(top["Avg"]))

fig = plt.figure(figsize = (10, 10))
ax = plt.subplot(111, projection = "polar")

bars = ax.bar(
    angles,
    top["Avg"],
    width = width,
    bottom = 0,
    color = bar_colors,
    edgecolor = "white",
    align = "edge"
)

for bar, value in zip(bars, top["Avg"]):
    angle = bar.get_x() + bar.get_width() / 2
    ax.text(
        angle,
        value + 0.4,
        f"{value:.2f}",
        ha = "center",
        va = "bottom",
        fontsize = 14,
        fontweight = "bold",
        color = "black",
        rotation = 0,
        rotation_mode = "anchor"
    )

ax.set_theta_offset(np.pi / 2)
ax.set_theta_direction(-1)
ax.set_xticks(angles + width / 2)
ax.set_xticklabels(top["Genre List"], fontsize = 12)
ax.set_yticks(np.arange(0, 11, 1))
ax.set_yticklabels(np.arange(0, 11, 1), fontsize = 10)
ax.set_ylim(0, 10)
ax.set_title(
    "Average Scores of the 15 Most Popular Anime Genres",
    fontsize = 20,
    weight = "bold",
    pad = 20
)

plt.tight_layout()

plt.savefig("Results/MostPopularGenre.png", dpi = 300)

