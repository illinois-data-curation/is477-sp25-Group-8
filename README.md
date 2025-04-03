Create virtual environment
Create a virtual environment named 'venv': python3 -m venv venv

Activate virtual environment
On macOS and Linux:
source venv/bin/activate
On Windows:
.\venv\Scripts\activate
Install dependencies
Install the required dependencies from the requirements.txt file:

pip install -r requirements.txt

Run Snakemake
Run the Snakemade workflow with the following command: snakemake --cores 1
