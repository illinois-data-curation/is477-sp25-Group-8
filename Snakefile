rule all:
    input:
        "data/animes.csv",
        "data/characters.csv",
        "database/IntegratedJapaneseAnime.db",
        "data/myanimelist_data.csv",
        "data/integrated_anime_data.csv"

checkpoint download_data:
    output:
        "data/animes.csv",
        "data/characters.csv"
    input:
        "DataAcquisition/DownLoadData.py"
    shell:
        "python {input}"

rule fetch_data:
    output: 
        "data/myanimelist_data.csv"
    input:
        script = "DataAcquisition/Jikan.py",
        anime_data = "data/animes.csv",
        character_data = "data/characters.csv"
    shell:
        """
        echo "Fetching data from API key..."
        python {input.script}
        """

rule create_and_import:
    output:
        "database/IntegratedJapaneseAnime.db"
    input:
        create_script = "DataIntegration/CreateDatabase.sql",
        import_script = "DataIntegration/ImportData.sql",
        anime_data = "data/animes.csv",
        character_data = "data/characters.csv"
    shell:
        """
        echo "Creating database..."
        sqlite3 {output} < {input.create_script}
        echo "Importing data into database..."
        sqlite3 {output} < {input.import_script}
        """

rule integrate_and_export:
    output:
        "data/integrated_anime_data.csv"
    input:
        integrate_script = "DataIntegration/IntegrateData.sql",
        export_script = "DataIntegration/ExportData.sql",
        database = "database/IntegratedJapaneseAnime.db"
    shell:
        """
        echo "Integrating data..."
        sqlite3 {input.database} < {input.integrate_script}
        echo "saving the result as CSV file..."
        sqlite3 {input.database} < {input.export_script}
        """