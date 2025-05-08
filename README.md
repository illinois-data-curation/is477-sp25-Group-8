# From Subculture to Mainstream: Examining Anime’s Transformation From Microculture Into Global Mainstream Through User Engagements

# Link to archival record

# Contributors

## Team Members

- Weiting Yang ORCID: <https://orcid.org/0009-0003-6401-2860>

- Qiran Hu ORCID: <https://orcid.org/0009-0007-1753-0189>

## Team Members Responsibilities

### Weiting Yang

Document data profiling, quality assessment, and cleaning (cf. Week 7)

  - Conduct exploratory data profiling to identify missing values, duplicates, or inconsistencies

  - Apply data cleaning techniques such as imputation, outlier detection, or normalization to ensure validity of the dataset

Implement simple data analysis and/or visualization (answering at least part of your RQs)

  - Calculate descriptive statistics, frequency distributions, and value counts

  - Perform initial exploratory data analysis (EDA) with Python libraries such as Pandas, Seaborn, and Matplotlib to uncover patterns, trends, and outliers in the data

Create a reproducible package (cf. Week 8)

  - Document all describing steps so someone else can reproduce the same results

  - Upload output data to Box and include a shareable link to the folder

Archive your project in a repository, obtaining a persistent identifier (cf. Week 13)

  - Ensure all the code, workflow scripts, etc., can be reproduced for final desired results

  - Publish the finalized project package in group 8 repository and check if the package can be accessed or reproduced in a long-term. * Archival record (cf. Week 13)

  - An copy of your project submitted to the Zenodo long-term archive or a CodeOcean capsule* Persistent Identifier (cf. Week 13)- Persistent identifier obtained from the long-term archive

### Qiran Hu

Data acquisition (cf. Weeks 3-4)

  - Script(s) used to programmatically acquire data (e.g., via requests) and check integrity (e.g., SHA-256)

  - Documentation describing steps someone else would use to acquire data, including checksums. This is particularly important if your data cannot be redistributed.

Automatic (programmatic) integration of datasets using Python/Pandas and/or SQL (cf. Weeks 5-6)

  - Use Python (Pandas) and SQL to merge multiple datasets from different sources

  - Create conceptual models, integration schema, or query that spans the sources- Automated end-to-end workflow execution (cf. Weeks 9-10)

  - Document all the required steps to repeat the designed workflow

  - Make sure all the script can be used to re-execute your end-to-end analysis workflow

Accurate citation of data and software used (cf. Weeks 11-12)

  - Documented all the researched data and third-party software for this project

  - Check the citations of the data and/or software used in this project complies with formal standards

Create metadata describing your package (cf. Week 12)

  - Document dataset description, variable definitions, data provenance, authorship, licensing, and usage instructions 

  - Document how data was obtained and used

# Summary

## Abstract

The anime culture has become a global phenomenon that significantly influences popular culture and shapes the entertainment industry worldwide with skyrocketed revenues and unprecedented international growth in recent years. Streaming services in particular have significantly improved anime across the world and fostered a gigantic fanbase globally, which is expected to contribute “a compound annual growth rate of 10.20% from 2023 to 2030”[ ](https://www.cognitivemarketresearch.com/anime-market-report)in international licensing and merchandising (Bali, 2025). This paper will examine the key factors of anime's global market expansion through “anime content creations and distributions” and analyze their implications for stakeholders and investors as well as regular anime fans (Shinde, 2024). Thus, this project aims to provide content creators, investors, and anime fans with a deeper understanding of anime's expanding economic footprint and “significant investment opportunities” as anime characters and series[ ](https://scoop.market.us/anime-market-news/)emerge in this global industry (Shinde, 2024).

## Motivation

Despite the success of anime in fan communities and streaming services, detailed information about each anime series remains fragmented across multiple sources. Open source databases like MyAnimeList contain user ratings and reviews for tens of thousands of anime titles while streaming companies hold data on viewership and global reach. There is a compelling need for an integrated anime database that consolidates these disparate data points into a single database. With the integrated database, it enables researchers and industry analysts to systematically examine patterns and correlations in anime data. Therefore, detailed analysis on the final integrated database could help investors make informed decisions about production funding, licensing, or merchandising opportunities. Meanwhile, anime fans can gain deeper insights into popular genres, seasonal trends, and the evolution of anime over time. Ultimately, both the created anime database and its data analysis could bridge the gap between creative content and business strategy, supporting the sustainable growth of the anime industry.

## Methodology:

In this project, we created a well organized Japanese anime database and discovered any unique insights or patterns. The database is composed of anime datasets shared on Kaggle and open resource anime API. With the created integrated database, we conduct data analysis and provide meaningful information for investors as well as anime enthusiasts to better understand industry trends, audience preferences, and content performance. For example, one could analyze whether certain genres tend to achieve higher international popularity, or how a series' user rating correlates with its viewership numbers across regions. By developing an integrated database and analytical framework, this project seeks to answer such questions and provide insights into the drivers of anime's worldwide success. 

# Research Questions

As anime continues to expand its global footprint beyond its traditional markets, developing sophisticated analytical frameworks becomes crucial because such systematic analysis of anime consumption unveils broader cultural phenomena in digital entertainment ecosystems. 

## The Relationship Between Animes Scores And Viewers

What is the relationship between an anime’s score and its viewers?(Q1.1)Does the most watched anime also have the highest scores or mediocre series have highest viewership while popular series have average scores? By discovering the unique relationship between score and viewers, we hope to understand whether higher score indicates more viewers or factors like genres sometimes matter more than metrics like score and rank.

  - (Q1.2)Which anime are highly rated by the viewers who watch them but aren’t very popular overall? (Q1.3)Why these quality series didn’t reach a wider audience? (Q1.4)What do these shows have in common? (Q1.5)Are they older anime or do they all share specific similarities?

  - (Q1.6)Conversely, which anime attract huge viewership despite relatively lower scores? (Q1.7)For example, are there trending series that everyone watches but many consider them as average in terms of score? 

## How Active Do Viewers Engage Based On Anime’s Popularity

How actively viewers engage in discussing an anime based on its popularity? (Q2.1)Does a higher scored percentage indicate a more engaged or satisfied audience? (Q2.2)In other words, do anime with large shares of viewers who rated the show also tend to have higher popularity? By analyzing the underlying patterns between viewer engagement and anime score, we aim to understand whether an anime with just decent scores still becomes popular in terms of favorites ratio or vice versa?

  - (Q2.3)How does the score percentage, which is the proportion of viewers who rated the anime, change as the overall score increases? (Q2.4)Similarly, how does the favorited percentage, which is the proportion of viewers who favorited the anime, change as the overall score increases? 

  - (Q2.5)Is there a strong correlation between an anime’s average score and its number of favorites or favorited percentage? (Q2.6)For instance, does high score anime also have a higher fraction of their viewers marking them as their favorite? 

## What Are The Most Popular Genres Based On Scores And Views

What genres are most strongly associated with high viewership and popularity? (Q3.1)Do certain genres have a track record of successful shows? By delving deep into this question, we plan to identify which genres streaming platforms might prioritize for a broad audience and whether certain genres inherently attract more viewers or higher scores.

  - (Q3.2)Is the inclusion of a popular genre like harem or shounen linked to significantly higher audience numbers​? (Q3.3)Conversely, do certain genres like mecha or sports correlate with lower anime?

  - (Q3.4)Are there genres that consistently receive high anime scores or a lot of favorites despite not being the most widely watched? (Q3.5)For instance, do specific genres like slice of life or psychological thrillers get positive ratings from fans who do watch them even if their overall popularity ranking is moderate? 

## Findings:

As one can see, our analysis of anime genres, studio influence, audience engagement, and distribution frameworks offers a comprehensive understanding of the key factors driving anime’s international success. Anime’s global popularity comes from its amazing content and its spread among different people around the world. Great stories, interesting genres, and high quality contents are at the heart of a successful anime. In order to keep expanding globally with tremendous success, anime needs to be marketed more effectively so that more people will know about it and access it easily. By learning from these insights, people in the anime industry can come up with plans to reach more fans and make the world of anime entertainment even richer and more diverse.

# Data Profile

## Kaggle Datasets

The primary dataset that is utilized in our research is obtained from Kaggle’s  Anime Dataset with Reviews MyAnimeList. This extensive dataset contains 19311 distinct animes, which provides a comprehensive overview of various anime attributes that are critical for analysis. These attributes include genres, airing dates, popularity, ranks, and viewer scores. The other supplementary dataset that is utilized in our research is also obtained from Kaggle’s MyAnimeList Jikan Database, which contains detailed character information for 146049 anime characters. This dataset significantly enhances analytical depth insights into character popularity and cultural impact.

Integrating these two datasets results in a comprehensive relational database where we can systematically link character information to respective anime titles. This integration enhances the analytical capabilities of the dataset, which allows us to explore character influence on anime popularity, fan engagement, and broader cultural significance.

## Kaggle Dataset License And Terms of Use

Datasets provided by Kaggle come with specific terms of use that must be followed by users. In order to access these datasets, users must create an account by providing accurate personal information. Each user is permitted only one active Kaggle account; it ensures clear accountability and compliance with Kaggle’s guidelines. It is strictly prohibited to share account credentials or to impersonate others as these actions could compromise user security and data integrity. Minors are required to secure parental consent before utilizing Kaggle datasets, which is explicitly detailed in Kaggle's privacy policy.

The terms of use specifically outline permissible activities and restrictions regarding dataset usage. These datasets are intended for internal, personal, educational, and research purposes. Commercial exploitation or the monetization of the datasets without proper authorization is explicitly prohibited. The referenced datasets are licensed under the Creative Commons CC0 1.0 Universal License, which is commonly referred to as the public domain dedication. Under this license, dataset creators waive all rights to the dataset by making the data freely available for all users without any legal restrictions. Consequently, users can freely access, use, modify, distribute, and even incorporate the datasets into commercial or non commercial projects without requiring explicit permission or attribution to the original creators. While attribution is not mandatory, users are encouraged to provide proper citation to recognize the creators and contribute positively to the research community. This comprehensive freedom significantly enhances the versatility and broad applicability of these datasets which makes them particularly valuable for research, academic projects, and technological development.

Furthermore, users are required to comply with ethical guidelines while using datasets so that the data is not misrepresented or used in ways that could be misleading or harmful. Users should also regularly review and comply with any updates or changes to Kaggle’s terms of use. Failure to follow these terms can result in suspension or termination of user accounts along with potential legal consequences. Kaggle also emphasizes responsible and respectful interactions within its community forums; it encourages users to collaborate positively, share insights constructively, and support collective learning and growth. By clearly outlining these expectations, Kaggle aims to foster an inclusive, safe, and productive environment for data driven research and innovation.

## Jikan Dataset

In addition to the Kaggle datasets, the Jikan REST API is also utilized to gather the latest information from the active anime and manga community hosted on MyAnimeList. As an open source and unofficial API, the Jikan API provides real time data so that we can obtain the most up to date information. Key attributes from Jikan include anime type, airing status, viewer rating, and the number of user favorites. These attributes are essential for detailed analysis of media type distributions, current viewing trends, demographic segmentation, and user engagement levels, enabling targeted and comprehensive market analysis.

## Jikan Dataset License and Terms of Use

The Jikan REST API operates under the MIT License, which is an open source license recognized for its permissive terms. This license grants extensive freedom by allowing users unrestricted rights to use, modify, distribute, and integrate the API into commercial and non commercial projects without needing explicit permission or incurring fees.

The MIT License explicitly disclaims warranties by stating that software and data are provided without guarantees regarding reliability, accuracy, or completeness. Users must therefore independently assess the suitability of the data for their specific use cases. Users should also remain aware of potential changes to MyAnimeList’s terms of service, which could indirectly affect data accessibility through the Jikan API. Thus, we suggest to regularly monitor MyAnimeList’s terms in order to comply and minimize risks related to changes in data access or usage permissions.

As Jikan’s MIT License places no restrictions on data retention, developers are free to cache or store the API’s responses as needed. There is no built in requirement to delete or purge data after a certain time because the license does not mandate how long you can keep the information. Hence, it is important to recognize the data from Jikan on account of the fact that it is dynamic and updates regularly. Regarding personal data, if developers choose to store any publicly obtained user information, they may only retain it as long as their applications require. While the MIT License does not force any particular retention limits, users have to be mindful of data lifecycle. Thus, the MIT License gives developers various degrees of freedom to store Jikan data.Furthermore, users of the Jikan API should implement responsible data usage practices when integrating API data into large scale applications. Following recommended rate limits and efficiently caching API responses is critical to maintaining optimal performance and avoiding potential disruptions. Jikan’s terms also recommend transparency regarding data sourcing where users should avoid using the API for actions that could be detrimental to MyAnimeList’s infrastructure or community, such as excessive data scraping or automated data harvesting without appropriate controls. By clearly communicating these responsibilities, the Jikan API seeks to ensure sustainable and respectful usage, preserving the integrity and accessibility of anime data for the broader community.

As one can see, combining datasets from Kaggle and Jikan, we can create an informative database for our research since these datasets collectively provide comprehensive insights that could be used to address current challenges and opportunities in the anime market.


# Findings 

In order to answer the research questions that we are exploring earlier, we have constructed several data visualizations to help us better understand the relationship between different attributes in the dataset and their contribution to anime popularity.

Anime has rapidly transformed from a micro culture into a mainstream global phenomenon. In the past year, the anime industry accounted for nearly 5% of worldwide audience demand as reflected in its growing market size. Our study systematically investigated the pattern behind anime’s global market expansion through analysis of content creation trends, genre dynamics, studio performance, and audience engagement. By exploring 18000 anime titles from the Jikan API, we employed exploratory analysis to understand the factors shaping the industry’s growth. These findings reveal valuable insights into the relationship between creative choices, studio reputation, and audience behavior. 

According to these insights, we noticed that there is a huge gap between what fans love and what most anime fans actually watch. Take Legend of the Galactic Heroes as an example, with an incredible 9.01 score, it only has about 342,000 viewers. Due to its older animation style and complicated storylines, it requires viewers to understand its sophisticated background before watching it. Meanwhile, even though Demon Slayer has a slightly lower score of 8.7, it has a massive fan base of 3.8 million viewers. These mainstream animes succeed by focusing on stunning visuals and straightforward stories as well as social media promotion and global streaming advertising to reach as many people as possible. Unfortunately, this problem gets worse because of how anime is distributed today. Many brilliant older classics like Rose of Versailles are not available on major streaming platforms, which means newer anime fans never discover them. At the same time, services like Crunchyroll and Netflix keep pushing recent shows that work well with their algorithms, which pushes less popular animes further into the shadows. 

Based on the current global anime market, there are several practical ways that it can continue to grow. Industry stakeholders need to overcome key challenges like limited distribution, poor promotion of less known titles, and streaming platform biases. Making less known anime more accessible through reworking older works is crucial. For instance, Netflix's successful revival of Neon Genesis Evangelion shows how effective this approach can be. With better localization with multiple language options and quick simulcast releases, it helps to build and expand international fan communities. Forming strategic international partnerships also offers significant growth potential. With collaborations between Netflix and studios like MAPPA and Mir, producers could have bigger budgets, better global distribution, and wider audience reach. Japan's Cool Japan initiative and international festival appearances further expand anime's global footprint. Improving recommendation algorithms to highlight lesser known titles, combined with smart social media marketing and influencer collaborations will attract diverse global audiences. Therefore, these approaches can establish anime as a mainstream global entertainment medium with lasting industry growth and cultural impact.

# Future Work

## Useful Insights From Our Findings

Our analysis identified mystery, drama, and romance as the highest performing genres with median scores exceeding 7.0 and strong correlations to viewer engagement metrics. The success of these genres utilize their universal storytelling frameworks to transcend cultural barriers. For instance, Attack on Titan and Your Lie in April exemplify how genre hybridization amplifies global appeal. Conversely, sports and horror genres seem to underperform due to their limited audience. While mainstream genres dominate viewership, subgenres like slice of life emerged as a dark horse since they resonate deeply with international audiences. Thus, these insights provide unique opportunities for platforms to promote these genres for dedicated fanbases.In addition, studio reputation significantly impacts audience expectations and engagement. Top tier studios such as KFactory limit their portfolios with visionary directors and writers to maintain artistic integrity. In contrast, larger studios like Toei Animation face several challenges on account of their popular shows. For example, Dragon Ball Super with a score of 7.1 underperformed significantly compared to its previous series Dragon Ball Z with a score of 8.3, which highlights the obstacles of maintaining their high reputation among their fans. Moreover, the format of anime content plays a role in its global expansion. TV series, which make up most of the anime in the study, usually get the most attention from fans around the world. These series can tell longer stories and develop characters over many episodes, which helps build big, loyal fan groups. On the other hand, shorter anime like OVAs, specials, or movies usually have smaller audiences. Even though movies and OVAs often get high ratings because dedicated fans love them or they have better quality per episode, they usually stay popular only with smaller groups unless they’re widely available. Despite the fact that long TV series are the main way to grow fans around the world, movies and OVAs are still important because there are fans who already love the series or find them later on streaming services.

## Future Improvements

As the global anime market continues its expansion, our proposed platform offers various benefits to both anime fans and stakeholders. However, as entertainment technology and consumer behavior rapidly evolves, we hope to extend our research to improve the user experience and address specific limitations in our current platform. Based on our preliminary analysis and research, we have identified several plans that can be implemented in the near future.

### Large Language Model Integrations And Machine Learning Algorithms

With thousands of anime titles available, apps with personalized recommendation services that understand each individual’s tastes become extremely viral​. Modern streaming platforms have shown the power of this approach where Netflix reported that users discover  “around 80 percent of shows” through its recommendations system (Bischoff, 2024). While our current platform effectively recommends top tier animes to users based on users’ preferences on genres, we plan to build a better recommendation system that requires more sophisticated information about anime rather than solely relying on generes.  By learning from a fan’s viewing history, favorite genres, characters, and even art styles, a fine tuned large language model system can highlight hidden gems that a user might otherwise overlook. As one can see, artificial intelligence based recommendation systems offer personalized tools for both anime fans and investors.

### Multimedia Performance Evaluation

The anime industry today spans multiple media platforms from original manga and light novels, to animated series, films, video games, and a vibrant online fandom on social networks and forums. Different media formats are often closely intertwined where a popular manga might be adapted into an anime series or the success of an anime might boost the sales of its original light novel. We plan to incorporate anime’s performance across different media by linking anime with their source manga and light novels. With systematic analysis performance across these media, researchers and industry stakeholders can uncover how success in one format impacts the other. For instance, the rise of an anime adaptation often drives readers to seek out the original manga as shown in Demon Slayer: Kimetsu no Yaiba. It skyrocketed “20 million copies” from “5 million copies” within a short time frame after its anime adaptation in 2019 (Peters, 2024). This means that a successful anime generates revenue through viewership as well as other media sources. Instead of scattered information where one app for anime tracking, one app for manga, and separate websites for news or fan discussions, our platform aims to become a well organized anime hub where fans can access a chronology of releases and story content across media. 

### User Contributed Database

Maintaining a comprehensive anime database is a daunting task for any organization. By enabling qualified user contributions to the database with a robust verification system, the community of knowledgeable fans can collectively expand and refine the anime database while maintaining data integrity. Based on the success of open source platforms like Wikipedia that has accumulated “6,987,642 articles” through volunteer editing​, data from qualified fans can dramatically speed up the growth of the database, keeping the entire database continuously up to date (Wikimedia Foundation, 2025).Furthermore, the collaborative nature of the database creates opportunities among anime enthusiasts since it fosters a sense of collective ownership and potentially reduces the fragmentations that are commonly seen across different platforms and forums. This integrated database also benefits industry stakeholders by creating more organized and identifiable consumer groups. As a result, by combining the passion and specialized knowledge of fans with rigorous verification standards and sophisticated data structures, we can create a more detailed anime database that supports the continued growth of anime as a global cultural phenomenon and apply this workflow to other entertainment domains.As one can see, the proposed future plans will transform our platform into a well organized anime hub for both anime fans and industry stakeholders. Instead of merely delivering content, our platform bridges the gaps between diverse user groups, including passionate anime fans, content creators, industry stakeholders, and global markets. By integrating immersive and interactive digital experiences that foster meaningful community interactions, this platform will become a place where fans can deepen their connections and shared passions rather than a simple content delivery system. By constantly improving the current system and implementing new features, our anime platform establishes a new milestone for how digital media can bring people across the world together with something that they are passionate about.

# Reproducing Steps

Sequence of steps required for someone else to reproduce our results.

## Create A Local Copy 

Create a local copy on your machine: ```git clone https\://github.com/illinois-data-curation/is477-sp25-Group-8 ```

## Build Virtual Environment

Build a virtual environment named 'venv': ```python3 -m venv venv```

## Activate Virtual Environment

On macOS and Linux: ```source venv/bin/activate```On Windows:```.\venv\Scripts\activate```

## Install Dependencies

Install the required dependencies from the requirements.txt file: ```pip install -r requirements.txt```

## Reproduce Our Analysis 
 
Run the Snakemake workflow with the following command: ```snakemake --cores 1```

# References 

Formatted citations for any papers, datasets, and software used in our project. 

## Research Paper Citations

Bali, V. (2025, March 19). The global anime market size was USD 28.8 billion in 2023!. Cognitive Market Research. https://www.cognitivemarketresearch.com/anime-market-report
Shinde, Y. (2024, July 3). Anime market trends: A journey towards USD 74.8 bn. Market.us Scoop. https://scoop.market.us/anime-market-news/
Dyck, S. O. P. R. (2024, September 6). Should Christians watch anime? A discernment guide. Pauline.org. https://pauline.org/media-mindfulness/should-christians-watch-anime-a-discernment-guide/
Razak, S. (2025, January 9). Exploring the world of Anime. prezi.com. https://prezi.com/p/8jc6oob9utvq/exploring-the-world-of-anime/
Ferjan, M. (2024, January 8). 20+ Anime Statistics & Facts: How many people watch anime? (2025). HeadphonesAddict. https://headphonesaddict.com/anime-statistics/
Pace-McCarrick, S. (2021, December 16). How far does anime challenge Joseph Nye’s “Soft power” and its approach to culture? E-International Relation. https://www.e-ir.info/2021/12/11/how-far-does-anime-challenge-joseph-nyes-soft-power-and-its-approach-to-culture/
Iwabuchi, K. (2002, November 8). Recentering globalization. De Gruyter Brill. https://www.degruyterbrill.com/document/doi/10.1515/9780822384083/html
Fennell, D., Liberato, A. S. Q., Hayden, B., & Fujino, Y. (2013, September 1). Consuming anime. The Aquila Digital Community. https://aquila.usm.edu/fac_pubs/8302/
Mash, M. (2024, September 4). The global impact of japanese animation: How anime shaped pop culture. ALC Atlantis. https://alc-atlantis.com/the-global-impact-of-japanese-animation-how-anime-shaped-pop-culture/
Scottnicole, S. (2024, January 17). Psychological benefits of Cosplay. The Urban Crews. https://www.theurbancrews.com/lifestyle/cosplay-psychological-benefits/
Hulu - Anime News Network. (2025, April 26). Animenewsnetwork.com. https://www.animenewsnetwork.com/encyclopedia/company.php?id=6901
Tran, V. H., Sebastian, Y., Karim, A., & Azam, S. (2024, December 5). Distinguishing human journalists from artificial storytellers through stylistic fingerprints. MDPI. https://www.mdpi.com/2073-431X/13/12/328
 DeGuzman, K. (2024, April 17). Non-linear plots - how to write stories out of order. StudioBinder. https://www.studiobinder.com/blog/what-is-a-non-linear-plot-definition/
 Bischoff, M. (2024, February 20). How recommendation algorithms work--and why they may miss the mark. Scientific American. https://www.scientificamerican.com/article/how-recommendation-algorithms-work-and-why-they-may-miss-the-mark/#:~:text=Whether%20we%E2%80%99re%20using%20Spotify%2C%20Amazon%2C,For%20example%2C%20the
Peters, M. (2024, October 5). Here’s how demon slayer’s anime boosted the manga sales. ComicBook.com. https://comicbook.com/anime/news/demon-slayer-anime-influence-manga-sales-boost/#:~:text=In%20terms%20of%20numbers%2C%20Demon,all%20thanks%20to%20the%20anime
Atherton, M. T. (2024, April 18). Anime’s outsized impact on social media, quantified. Anime Trending | Your Voice in Anime! https://www.anitrendz.com/news/2024/04/19/animes-outsized-impact-on-social-media-quantified
Wikimedia Foundation. (2025, April 22). Statistics. Wikipedia. https://en.wikipedia.org/wiki/Wikipedia:Statistics#:~:text=As%20of%20April%202025%2C%20the,encyclopedic%20text%20is%20added
 Purini, R. (2024, July 3). Sony Group Portal - Crunchyroll’s mission to be the ultimate destination for anime fans. Sony Group Portal - Home. https://www.sony.com/en/SonyInfo/blog/2024/07/03/


## Datasets Citation 

Marlesson. (2025-05-05). Anime Dataset with Reviews - MyAnimeList | Kaggle. Retrieved from <https://www.kaggle.com/datasets/marlesson/myanimelist-dataset-animes-profiles-reviews?select=reviews.csv>Andreu Vall Hernàndez. (2025-05-05). MyAnimelist Jikan Database | Kaggle. Retrieved from <https://www.kaggle.com/datasets/andreuvallhernndez/myanimelist-jikan?select=characters.csv>MyAnimeList. (2025-03-15). _MyAnimeList_. Retrieved March 15, 2025, from[ https://myanimelist.net/](https://myanimelist.net/)

## API Citation

@irfanDahir. (2025-05-05). Jikan - Unofficial Myanimelist API. Retrieved from <https://jikan.moe/>

## Software Citation

Python Software Foundation. (2023). Python (Version 3.11) \[Computer software]. Available from <https://www.python.org/>Hipp, D. R. (2023). SQLite \[Software]. <https://www.sqlite.org/>
