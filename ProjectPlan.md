# Overview

## Introduction to Japanese Anime Culture and Its Influence

Japanese anime has become a global phenomenon that significantly influences popular culture and shapes the entertainment industry worldwide. According to a 2021 report by The Association of Japanese Animations, major streaming platforms, such as Netflix and Crunchyroll, have invested significant amounts of money in anime content, which demonstrates its commercial potential. By diving deeper into the unique patterns of Japanese anime culture, we plan to provide valuable insights for investors as well as the anime enthusiasts to better understand the current public taste in anime through our comprehensive research.

## Research Purpose and its Application

### Cuurent Challenges in Anime Industry

Due to fragmented and different types of data sources, most of the research questions would remain challenging or impossible to answer. However, building an integrated database from various data sources offers numerous benefits for researchers, enthusiasts, and industry professionals. Production studios, distributors, and streaming platforms can utilize insights derived from this database to enhance their decision. Understanding how different attributes perform in specific markets allows professionals to make more targeted content development and acquisition strategies. To this end, our research offers competitive advantages within the rapidly evolving anime industry ecosystem. In addition, beyond its commercial applications, our research also benefits the overall Japanese anime community. Japanese anime enthusiasts can identify less known works similar to their favorites through sophisticated recommendation algorithms built upon comprehensive metadata. As one can see, our research can be used to identify patterns and correlations that illuminate broader cultural and industry trends.

### Project Goal and Its Implementation

This research project aims to develop a well structured Japanese anime database through the integration of various data sources, including open-source APIs, Kaggle datasets, and unofficial anime platforms. The integrated database serves as a reliable resource for addressing research questions pertaining to both the anime industry and the broader anime community. While exploring the unique relationships between each anime and its popularity, this project will involve data collection and data cleaning to form a relational database which ensures that data is consistent, accurate, and easily accessible for further research. The integrated database includes anime attributes such as titles, ratings, popularity, rank, etc. With automated and reproduible workflows, this project delves into anime’s growth and influence globally for both professionals and fans in the field of Japanese anime industry. 

# Research Questions 

As anime continues to expand its global footprint beyond traditional Japanese markets, developing sophisticated analytical frameworks becomes crucial because such systematic analysis of anime consumption unveils broader cultural phenomena in digital entertainment ecosystems. 

1. How have the top 100 anime titles in 2025 shifted from the top 100 in 2020 in terms of ratings, user engagement, and genre representation. In addition, what factors may explain these changes?

2. What patterns can be identified in the skyrocketing anime popularity and rating over the past five year period. Specifically, which anime demonstrate statistically significant positive deviations from expected growth trends?

3. Does a correlation exist between critical evaluation scores and viewership metrics across the anime medium. Moreover, are there any identifiable subsets of productions that maintain high quality ratings despite limited audiences?

4. Among various anime formats like TV series, movies, and OVAs, which categories consistently achieve higher average ratings. Furthermore, how do differences in production cycles, target audiences, and narrative complexity influence these observed patterns?

# Team: Each team member roles and responsibilities

### Weiting Yang
- **Document data profiling, quality assessment, and cleaning** (cf. Week 7)  
  - *Conduct exploratory data profiling to identify missing values, duplicates, or inconsistencies*  
  - *Apply data cleaning techniques such as imputation, outlier detection, or normalization to ensure validity of the dataset*  

- **Implement simple data analysis and/or visualization**  
  - *Calculate descriptive statistics, frequency distributions, and value counts*  
  - *Perform initial exploratory data analysis (EDA) with Python libraries such as Pandas, Seaborn, and Matplotlib to uncover patterns, trends, and outliers in the data*  

- **Create a reproducible package** (cf. Week 8)  
  - *Document all describing steps so someone else can reproduce the same results*  
  - *Upload output data to Box and include a shareable link to the folder*  

- **Archive your project in a repository, obtaining a persistent identifier** (cf. Week 13)  
  - *Ensure all the code, workflow scripts, etc., can be reproduced for final desired results*  
  - *Publish the finalized project package in group 8 repository and check if the package can be accessed or reproduced in a long-term*  

- **Archival record** (cf. Week 13)  
  - *A copy of your project submitted to the Zenodo long-term archive or a CodeOcean capsule*  

- **Persistent Identifier** (cf. Week 13)  
  - *Persistent identifier obtained from the long-term archive*  

---

### Qiran Hu
- **Data acquisition** (cf. Weeks 3-4)  
  - *Script(s) used to programmatically acquire data (e.g., via requests) and check integrity (e.g., SHA-256)*  
  - *Documentation describing steps someone else would use to acquire data, including checksums. This is particularly important if your data cannot be redistributed.*  

- **Automatic programmatic integration of datasets using Python/Pandas and/or SQL** (cf. Weeks 5-6)  
  - *Use Python (Pandas) and SQL to merge multiple datasets from different sources*  
  - *Create conceptual models, integration schema, or query that spans the sources*  

- **Automated end-to-end workflow execution** (cf. Weeks 9-10)  
  - *Document all the required steps to repeat the designed workflow*  
  - *Make sure all the script can be used to re-execute your end-to-end analysis workflow*  

- **Accurate citation of data and software used** (cf. Weeks 11-12)  
  - *Documented all the researched data and third-party software for this project*  
  - *Check the citations of the data and/or software used in this project complies with formal standards*  

- **Create metadata describing your package** (cf. Week 12)  
  - *Document dataset description, variable definitions, data provenance, authorship, licensing, and usage instructions*  
  - *Document how data was obtained and used*  

# Dataset

- https://www.kaggle.com/datasets/marlesson/myanimelist-dataset-animes-profiles-reviews?select=reviews.csv

The base dataset we will be using is from Kaggle, Anime Dataset with Reviews - MyAnimeList. The anime dataset contains a total of 19,311 entries, each representing a different anime title. Important key attributes are genre (list of genres), aired (airing dates), popularity, rank, score. The genre column lists the genres associated with each anime in a string format. The aired column records the airing dates in a textual format. Popularity indicates its popularity rank, and rank reflects its overall ranking based on user feedback. There is also a scoring column which represents the average user rating. Overall, the dataset offers us a solid foundation, allowing us to conduct exploratory analysis, genre trends over time, and visualizations of user ratings and popularity. With this analysis, we can continue to develop a well structured Japanese anime database for reproducing. 

- https://www.kaggle.com/datasets/andreuvallhernndez/myanimelist-jikan?select=characters.csv

Another dataset that we will integrate is the characters dataset from Kaggle, MyAnimelist Jikan Database. This dataset contains information on 146,049 anime characters. Key attributes are name, name_kanji, and nicknames. The names are in romanized form, and the name_kanji are in Japanese script. The nicknames column are the alternate names or aliases of the characters’ names. Popular characters like Lelouch Lamperouge, Levi, and L Lawliet are listed at the top of the dataset with high favorite counts. With the information in this dataset, we are able to integrate it with the anime dataset to create a more comprehensive relational database by linking character records to their respective anime titles. With the use of foreign key relationships, the integrated database can explore deeper insights across multiple dimensions of anime data.

- https://jikan.moe/

The last dataset you will be applying is derived from Jikan. Through the Jikan REST API, we can obtain the most updated data from the website to ensure our application provides accurate and real-time information for all users; it is an unofficial and open-source API for the most active online anime + manga community and database. From this public API, we got an additional dataset with metadata about anime entries, which includes mal_id, type, airing, rating, and favorites. The mal_id is the unique identifier, which can serve as the primary key to link with other 2 datasets: the anime dataset and the characters dataset. The type column is about the format of the anime, such as TV series, Movie, or OVA, which is useful for database categorization. Different from airing in the anime dataset, the airing here is a boolean value that shows whether the anime is currently being broadcast. As for the rating, it provides age classifications like PG-13 or R-17+, which also means differently from the anime dataset. Lastly, the favorites column shows how many users have marked the anime as a favorite. This is an indicator of fan engagement and popularity. For our project goal, this API dataset can be used for database integration. For example, our base dataset - the anime dataset - can be integrated via the mal_id field, and mal_id can serve as our primary key or inspect semantic and representation ambiguity. 

# Proposed Timeline: 

## March 9  - March 15: Team Formation & Setup

1. Define roles, set up GitHub repository, outline project structure

2. Research and acquire project topic and dataset

3. Define project topic: Anime Database organization

## March 23  - March 29: Data Acquisition

1. Research the open source API key and anime platforms such as manga and anime community to gather more data to script a given amount of data from Kanji and create our third table

2. Conduct exploratory data analysis and list out missing attributes and include necessary attributes

## March 30 - April 5: Data Integration

1. Analyze all attributes from different datasets and identify our primary keys

2. Create the anime database and connect tables with primary keys and foreign keys

3. Select appropriate attributes to answer our research questions

## April 6 - April 12: Profiling, Quality Assessment, Cleaning and Data analysis/Visualization

1. Improve the data quality of our created anime database

2. Inspect semantic or representation ambiguity

3. Perform data cleaning and validate dataset consistency

4. Conduct preliminary analysis to gain insights for our research questions

## April 13 - April 19: Automated Workflow, Reproducible Package, and Citation

1. Create reproducible packages for our project 

2. Automate the workflow through snakemake

3. Cite all data and software sources properly

4. Include descriptive metadata for our project 

## April 20 - May 1: Metadata, Archival Record, and Persistent Identifier

1. Add data dictionary or codebook as text file

2. Upload our project to the Zenodo long-term archive or a CodeOcean capsule

3. Implement persistent identifier that is obtained from the long term archive