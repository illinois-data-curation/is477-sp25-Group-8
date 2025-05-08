rule all:
    input:
        "Key/Googlekey.txt",
        "Key/ApiKey.txt",
        "Data/animes_clean.csv",
        "Data/characters_clean.csv",
        "Data/myanimelist_data_clean.csv",
        "Database/IntegratedJapaneseAnime.db",
        "Data/integrated_anime_data.csv",
        "Results/AnimeScoresAndViewers.png",
        "Results/ViewersEngagementPercentage.png",
        "Results/MostPopularGenre.png",
        "Results/HashCheck.txt"

rule get_key:
    input:
        script="DataAcquisition/GetKey.py"
    output:
        google_key="Key/Googlekey.txt",
        api_key="Key/ApiKey.txt"
    shell:
        "python {input.script}"

rule download_data:
    input:
        script="DataAcquisition/DownLoadData.py",
        google_key="Key/Googlekey.txt",
        api_key="Key/ApiKey.txt"
    output:
        animes="Data/animes.csv",
        characters="Data/characters.csv"
    shell:
        "python {input.script}"

rule fetch_data:
    input:
        script="DataAcquisition/Jikan.py",
        animes="Data/animes.csv",
        characters="Data/characters.csv"
    output:
        myanimelist="Data/myanimelist_data.csv"
    shell:
        "python {input.script}"

rule clean_animes:
    input:
        script="DataCleaning/Table1Clean.py",
        raw="Data/animes.csv"
    output:
        clean="Data/animes_clean.csv"
    shell:
        "python {input.script} {input.raw} {output.clean}"

rule clean_characters:
    input:
        script="DataCleaning/Table2Clean.py",
        raw="Data/characters.csv"
    output:
        clean="Data/characters_clean.csv"
    shell:
        "python {input.script} {input.raw} {output.clean}"

rule clean_myanimelist:
    input:
        script="DataCleaning/Table3Clean.py",
        raw="Data/myanimelist_data.csv"
    output:
        clean="Data/myanimelist_data_clean.csv"
    shell:
        "python {input.script} {input.raw} {output.clean}"

rule create_and_import:
    input:
        create_script="DataIntegration/CreateDatabase.sql",
        import_script="DataIntegration/ImportData.sql",
        animes="Data/animes_clean.csv",
        characters="Data/characters_clean.csv",
        myanimelist="Data/myanimelist_data_clean.csv"
    output:
        db="Database/IntegratedJapaneseAnime.db"
    shell:
        """
        sqlite3 {output.db} < {input.create_script}
        sqlite3 {output.db} < {input.import_script}
        """

rule integrate_and_export:
    input:
        integrate_script="DataIntegration/IntegrateData.sql",
        export_script="DataIntegration/ExportData.sql",
        db="Database/IntegratedJapaneseAnime.db"
    output:
        "Data/integrated_anime_data.csv"
    shell:
        """
        sqlite3 {input.db} < {input.integrate_script}
        sqlite3 {input.db} < {input.export_script}
        """

rule viewers_vs_score_plot:
    input:
        script = "DataVisualization/ViewersVsScore.py",
        data   = "Data/integrated_anime_data.csv"
    output:
        "Results/AnimeScoresAndViewers.png"
    shell:
        "python {input.script}"

rule viewers_engagement_plot:
    input:
        script = "DataVisualization/ViewersEngagementPercentage.py",
        data   = "Data/integrated_anime_data.csv"
    output:
        "Results/ViewersEngagementPercentage.png"
    shell:
        "python {input.script}"

rule most_popular_genre_plot:
    input:
        script = "DataVisualization/MostPopularGenre.py",
        data   = "Data/integrated_anime_data.csv"
    output:
        "Results/MostPopularGenre.png"
    shell:
        "python {input.script}"

rule hash_check:
    input:
        script = "IntegrityCheck/CheckHashSum.py",
        files  = [
            "Data/animes.csv",
            "Data/characters.csv",
            "Data/myanimelist_data.csv"
        ]
    output:
        "Results/HashCheck.txt"
    shell:
        "python {input.script}"