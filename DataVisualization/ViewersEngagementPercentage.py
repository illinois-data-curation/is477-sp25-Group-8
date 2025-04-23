import pandas as pd
import numpy as np
import os 
import matplotlib.pyplot as plt

df = pd.read_csv("Data/integrated_anime_data.csv")
df = df.dropna(subset = ["Score", "Favorite Rate (%)", "Score Rate (%)"])

agg = df.groupby("Score").agg(
    fav_rate = ("Favorite Rate (%)", "mean"),
    score_rate = ("Score Rate (%)", "mean")
).reset_index().sort_values("Score")

x = agg["Score"].values
fav = agg["fav_rate"].rolling(window = 5, center = True, min_periods = 1).mean().values
scored = agg["score_rate"].rolling(window = 5, center = True, min_periods = 1).mean().values

plt.figure(figsize = (12, 8))
ax = plt.gca()
ax.fill_between(x, fav, color = "#d62728", alpha = 0.65, label = "Favorited Rated")
ax.fill_between(x, scored, color = "khaki", alpha = 0.5, label = "Scored Rate")

ax.set_xlim(x.min(), x.max())
ax.margins(x = 0)

plt.xlabel("Anime Score", fontsize = 16, labelpad = 10)
plt.ylabel("Viewers Engagement Percentage (%)", fontsize = 16, labelpad = 10)
plt.title("Viewers Engagement Percentage Based On Anime Score", fontsize = 20, weight = "bold", pad = 20)
plt.ylim(0, max(scored.max(), fav.max()) * 1.1)
plt.legend(title = "Metric", fontsize = 12, title_fontsize = 14)
plt.tight_layout()

os.makedirs("Results", exist_ok = True)
plt.savefig("Results/ViewersEngagementPercentage.png", dpi = 300, bbox_inches = "tight")

