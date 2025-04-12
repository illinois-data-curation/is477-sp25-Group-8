rule all:
    input:
        # keys
        "Key/Googlekey.txt",
        "Key/ApiKey.txt",
        # raw data
        "Data/animes.csv",
        "Data/characters.csv",
        # fetched data
        "Data/myanimelist_data.csv",
        # database
        "Database/IntegratedJapaneseAnime.db",
        # final export
        "Data/integrated_anime_data.csv"


rule get_key:
    """
    Generate your Google and API keys.
    """
    input:
        script="DataAcquisition/GetKey.py"
    output:
        google_key="Key/Googlekey.txt",
        api_key="Key/ApiKey.txt"
    shell:
        "python {input.script}"


rule download_data:
    """
    Download raw anime and character CSVs using your keys.
    """
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
    """
    Enrich raw data via the Jikan API.
    """
    input:
        script="DataAcquisition/Jikan.py",
        animes="Data/animes.csv",
        characters="Data/characters.csv"
    output:
        myanimelist="Data/myanimelist_data.csv"
    shell:
        """
        echo "Fetching data from Jikan API..."
        python {input.script}
        """


rule create_and_import:
    """
    Create the SQLite database and import raw CSVs.
    """
    input:
        create_script="DataIntegration/CreateDatabase.sql",
        import_script="DataIntegration/ImportData.sql",
        animes="Data/animes.csv",
        characters="Data/characters.csv"
    output:
        db="Database/IntegratedJapaneseAnime.db"
    shell:
        """
        echo "Creating database schema..."
        sqlite3 {output.db} < {input.create_script}
        echo "Importing CSV data..."
        sqlite3 {output.db} < {input.import_script}
        """


rule integrate_and_export:
    """
    Run integration SQL and export the final joined CSV.
    """
    input:
        integrate_script="DataIntegration/IntegrateData.sql",
        export_script="DataIntegration/ExportData.sql",
        db="Database/IntegratedJapaneseAnime.db"
    output:
        "Data/integrated_anime_data.csv"
    shell:
        """
        echo "Integrating tables..."
        sqlite3 {input.db} < {input.integrate_script}
        echo "Exporting integrated data..."
        sqlite3 {input.db} < {input.export_script}
        """
