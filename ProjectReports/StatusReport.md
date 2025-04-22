# Interim Status Report

# **Task Status Updates**

## **Task 1: Data Acquisition**

**Current Task Status:** Completed

**Task Detailed Report:** For the data license, we obtained Jikan’s API key that is released under the MIT License. It is a permissive open source license allowing us to use, modify, and distribute for any purpose. We also obtained other two datasets from Kaggle under permissive redistribution terms. All proprietary or sensitive attributes were removed or encrypted to uphold ethical standards and to preserve the integrity and reproducibility of subsequent analyses.

## **Task 2: Data Integration**

**Current Task Status:** Completed

**Task Detailed Report:** Three relational tables, which are _animes, characters, and anime\_api_, are created after exploring various column names and data types across all tables. We have determined mal\_id as our primary linkage for the datasets. The mal\_id was validated as a globally unique identifier and promoted to serve as both the primary key in animes and as a foreign key in characters and anime\_api to enforce referential integrity via explicit key constraints. Prior to executing the integration, all datasets were subjected to a transient staging phase where format conversions, such as string trimming, date parsing, numeric coercion were performed. We also confirmed that all of the child records found matching parent entries, thereby ensuring a fully linked relational model.

## **Task 3: Profiling, Quality Assessment, and Cleaning**

**Current Task Status:** Completed

**Task Detailed Report:** We have conducted comprehensive profiling to identify missing values, anomalous formats, and duplicate records. We also have implemented various data cleaning strategies to resolve each issue, which enhances data fidelity and increases reliability in our research. For instance, missing data are addressed via explicit null to preserve record structure, data type coercion are normalized date fields to ISO standards, and string fields were standardized via regex to enforce uniform casing and remove extraneous whitespace. As one can see, with referential integrity checks, we have reconciled foreign‑key relationships across animes, characters, and anime\_api tables so that all child records are mapped to existing parent entities. These combined efforts elevated the dataset’s fidelity and underpinned the reliability of subsequent analyses.

## **Task 4: Data Analysis and Visualisation**

**Current Task Status:** Completed

**Task Detailed Report:** We have performed preliminary descriptive statistics and exploratory visualisations to detect missing data, extreme outliers, and different data structures in the integrated table. We have computed descriptive statistics for key variables like score, popularity, members, and episodes to characterise distributional properties. We also explored missing‑value matrices and bar plots to demonstrate systematic gaps. 

## **Task 5: Automated Workflow**

**Current Task Status:** In Progress

**Task Detailed Report:** The pipeline is being formalised in Snakemake, which is a rule based language for reproducible research workflows. Each rule captures provenance for inputs, outputs, and software environments. Snakemakes allows us to retrieve, clean, and preprocess the data integration by setting up rules within the designed workflow. The rules will specify the input and output anime files and commands to run automatically so that we can automate seamless execution to mitigate human error.

## **Task 6: Reproducible Package**

**Current Task Status:** In Progress

**Task Detailed Report:**  It will be beneficial for our project to package the entire process into reusable components to create a data analysis workflow. This improves the organization and scalability of our created anime database. In order to make our Snakemake workflow more accessible, we will also document the codes along with comments so that others are able to understand our work logic behind. In the future, if others would like to modify or use this database for anime research, they are more likely to modify the pipeline. To ensure reproducibility, like what we conducted in the lab, we will include an environment configuration file. In this file, we all mention all the required packages and software versions. This helps inform and guide others to reproduce the same results in their own software environment. 

## **Task 7: Citation of Data and Software Used**

**Current Task Status:** In Progress

**Task Detailed Report:** We cited the anime datasets and API dataset used into the formal format taught in the lecture. We clearly identified where the data was obtained, the context in which it was collected, and any preprocessing applied. We are currently citing all the dataset and softwares used in our project to conformant with standards, allowing other users to identify the specific versions we used in this project. 

## **Task 8: Metadata Describing the Dataset and Package**

**Current Task Status:** In Progress

**Task Detailed Report:** We will provide metadata describing the dataset and its companion software artefacts that are being authored in accordance with research standards. Our schema enumerates directory architecture, analytical scripts, raw and derived data objects, and their functional interdependencies. Dependency manifests capture exact library and framework versions, thereby enabling deterministic replication. We will also draft a comprehensive README to guide users through environment provisioning, pipeline execution, and validation procedures. Collectively, these resources advance transparency, reproducibility, and collaborative extensibility.

## **Task 9: Archival Record**

**Current Task Status:** In Progress

**Task Detailed Report:** We have selected Zenodo as the trusted digital repository for long‑term preservation. Upon deposit, the archive will contain a citable Digital Object Identifier. We will also associate our ORCID records with the submission to ensure unambiguous attribution and to enhance discoverability. This strategy ensures persistent access and scholarly recognition for subsequent investigations that build upon the database.

## **Task 10: Persistent Identifier**

**Current Task Status:** In Progress

**Task Detailed Report:**  We will create persistent identifiers to improve the transparency of our research project. We will utilize Digital Object Identifiers to reference static releases of the dataset and software with our ORCID. Prior to public release, we will produce a comprehensive audit to verify that every file, hyperlink, and script executes without error, which certifies the reproducibility and integrity of the package.

# **Project Timeline: Japanese Anime Culture Analysis**

## **Phase 1: Project Initialization (March 9-15)**

- **Team Organization and Infrastructure Setup**

  - Established team roles and responsibilities with clear delineation of tasks

  - Initialized GitHub repository with appropriate access permissions for all team members

  - Selected Japanese anime culture as the primary research domain

  - Implemented project management infrastructure including:

    - Communication channels for team collaboration

    - Regular meeting schedule to ensure consistent progress

    - Comprehensive project plan with defined milestones

## **Phase 2: Data Acquisition (March 23-29)**

- **API Integration and Source Identification**

  - Secured API credentials for the Jikan API as our primary data source

  - Developed Python scripts utilizing `requests` library for programmatic data retrieval

  - Documented acquisition process 

    - Implemented appropriate rate limiting to ensure API compliance

    - Deployed SHA-256 checksums to verify data integrity

- **Preliminary Data Assessment**

  - Conducted exploratory analysis on sample datasets to determine their structure

  - Analyzed available attributes across all different data sources

## **Phase 3: Data Integration (March 30-April 5)**

- **Schema Design and Database Implementation**

  - Developed conceptual entity-relationship models for integrated dataset

  - Designed database schema with appropriate tables and relationships

  - Implemented primary to maintain referential integrity

  - Created integration scripts to merge datasets from multiple sources

- **Data Transformation**

  - Extracted relevant attributes aligned with research questions

  - Developed SQL scripts for performing integration operations

  - Documented all integration steps for reproducibility

## **Phase 4: Data Quality Assessment and Visualization (April 6-12)**

- **Quality Evaluation and Data Cleaning**

  - Executed comprehensive data profiling to identify quality issues

  - Developed cleaning scripts to address inconsistencies, duplicates, and anomalies among different tables

  - Standardized data formats across integrated sources

- **Preliminary Analysis and Visualization**

  - Implemented scripts for exploratory data visualizations

  - Documented visualization methodology and interpretation guidelines

  - Established baseline metrics for subsequent in-depth analysis

## **Phase 5: Reproducibility Framework (April 13-19)**

- **Workflow Automation**

  - Developed Snakemake workflow for end-to-end analysis automation

  - Created modular, reusable components with comprehensive documentation

  - Implemented environment configuration files (`requirements.txt`)

  - Generated dependency documentation using `pip freeze` output

- **External Resource Documentation**

  - Prepared standardized citations for all data sources following academic conventions

  - Documented all software tools with appropriate version information

  - Created comprehensive execution instructions for workflow reproduction

## **Phase 6: Metadata and Documentation (April 20-26)**

- **Comprehensive Documentation**

  - Developed detailed data dictionary and codebook for the integrated dataset

  - Created user documentation explaining database schema and analysis methods

  - Prepared extensive README with setup and execution instructions

  - Generated descriptive metadata conforming to DataCite standards

## **Phase 7: Project Archiving (April 26-May 1)**

- **Repository Finalization and Long-term Preservation**

  - Organized GitHub repository according to best practices

  - Selected Zenodo as the archival platform for long-term preservation

  - Obtained Digital Object Identifier (DOI) as a persistent identifier

  - Ensured complete project accessibility and reproducibility through final verification

  - Published shareable link to data stored in Box with appropriate access permissions

# **Updated Project Plan**

### **Data Integrity and Checksums**

Based on our current progress, we implemented changes to enhance our Japanese anime culture analysis. Although our datasets are completely open sourced and public, we determined to include comprehensive data integrity and checksums for each datasets. This change significantly improves the transparency of our data pipeline and it simultaneously establishes a robust framework for verifying the consistency and authenticity of our datasets. Thus, this change will increase both the quality and reliability of our research's reproducibility, which  allows future researchers to confidently build upon our findings with verified data integrity.

### **Automation in Data Cleaning and Profiling** 

We also recognized the importance of workflow efficiency and data consistency across the data acquisition process. By fully automating the entire data acquisition workflow, this process will eliminate potential inconsistencies that might arise from manual intervention, standardize the data collection, and create an easier reproduction process. 

### **Future Plan** 

Furthermore, we will utilize other feedback received regarding our initial project plan to improve our current work.
