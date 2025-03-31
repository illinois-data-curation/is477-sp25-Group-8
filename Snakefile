rule all:
    input:
        "database/IntegratedJapaneseAnime.db",
        "data/myanimelist_data.csv",
        "data/integrated_anime_data.csv"

rule fetch_data:
    output: 
        "data/myanimelist_data.csv"
    input:
        script = "Jikan.py"
    shell:
        """
        echo "Fetching data from API key..."
        python {input.script}
        """

rule create_and_import:
    output:
        "database/IntegratedJapaneseAnime.db"
    input:
        create_script = "CreateDatabase.sql",
        import_script = "ImportData.sql",
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
        integrate_script = "IntegrateData.sql",
        export_script = "ExportData.sql",
        database = "database/IntegratedJapaneseAnime.db"
    shell:
        """
        echo "Integrating data..."
        sqlite3 {input.database} < {input.integrate_script}
        echo "saving the result as CSV file..."
        sqlite3 {input.database} < {input.export_script}
        """