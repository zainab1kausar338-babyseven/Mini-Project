# NGO Donation Data Quality Audit and PostgreSQL Pipeline

**Student:** Zainab Kausar
**Student ID:** DC-238

## Overview

This project demonstrates a complete data analytics and data quality workflow using NGO donation data.

The project focuses on **data quality auditing, exploratory data analysis (EDA), data cleaning, PostgreSQL database management, SQL analytics, Python-based analysis, and visualization**.

## Project Workflow

**CSV Data → PostgreSQL Raw Table → Data Quality Audit → EDA → Data Cleaning → PostgreSQL Clean Table → Analytics → Visualization**

## Dataset

The dataset contains **200 donation records**.

### Initial Data Quality Findings

* **Raw records:** 200
* **Missing emails:** 19 (9.5%)
* **Exact duplicate rows:** 5
* **Cleaned records:** 195

The data was audited for missing values, duplicate records, inconsistent data types, and potential donation amount outliers.

## Exploratory Data Analysis (EDA)

Exploratory Data Analysis was performed using Python, Pandas, and visualization techniques to understand the structure and patterns in the donation dataset.

The EDA includes:

* Dataset structure and summary statistics
* Missing-value analysis
* Donation amount distribution
* Donation amount outlier detection
* Payment method analysis
* Donation trends and patterns
* Data quality observations

The main EDA and analysis notebook is:

`NGO_Donation_PostgreSQL_Analysis.ipynb`

## Data Quality Audit

SQL queries were used to identify:

* Missing values
* Duplicate records
* Invalid or inconsistent data
* Data-type issues
* Potential outliers
* Data quality problems requiring correction

## Data Cleaning

The cleaning pipeline transforms the raw donation data into a structured and analysis-ready dataset.

Key cleaning activities include:

* Removing exact duplicate records
* Converting donation amounts into numeric values
* Converting donation dates into valid date formats
* Standardizing data
* Handling missing values
* Creating a cleaned PostgreSQL table

## PostgreSQL Pipeline

The SQL workflow is organized into sequential steps:

1. Create the PostgreSQL database
2. Create raw and cleaned tables
3. Load the raw CSV data
4. Perform data quality auditing
5. Execute the cleaning pipeline
6. Run analytical queries

## Analytics

The project answers business-oriented questions such as:

1. What percentage of donation records have missing contact information?
2. How many duplicate donation entries exist?
3. What is the total donation amount by payment method?
4. How do donations change over time?
5. Which columns require data-type conversion?
6. Are there unusually large donation amounts?

## Visualizations

The project includes visualizations for:

* Total donations by payment method
* Donation amount distribution
* Donation amount boxplot and outlier analysis
* Missing values before cleaning

## Technologies

* PostgreSQL
* SQL
* Python
* Pandas
* NumPy
* Matplotlib
* SQLAlchemy
* Psycopg2
* Jupyter Notebook

## Repository Structure

```text
Mini-project-1/
│
├── data/
│   ├── raw/
│   │   └── ngo_donations_raw.csv
│   └── cleaned/
│       └── ngo_donations_cleaned.csv
│
├── sql/
│   ├── 01_create_database.sql
│   ├── 02_create_tables.sql
│   ├── 03_load_data.sql
│   ├── 04_data_quality_audit.sql
│   ├── 05_cleaning_pipeline.sql
│   └── 06_analytics_queries.sql
│
├── visualizations/
│   ├── 01_total_donations_by_payment_method.png
│   ├── 02_donation_amount_distribution.png
│   ├── 03_donation_amount_boxplot.png
│   └── 04_missing_values_before_cleaning.png
│
├── NGO_Donation_PostgreSQL_Analysis.ipynb
├── pipeline.py
├── requirements.txt
├── README.md
└── .gitignore
```

## Setup

### 1. Install PostgreSQL

Install PostgreSQL and pgAdmin.

### 2. Create the Database

Run the following SQL script:

```text
sql/01_create_database.sql
```

Then connect to the `ngo_donations` database.

### 3. Create the Tables

Run:

```text
sql/02_create_tables.sql
```

### 4. Load the Raw Data

Update the CSV file path in:

```text
sql/03_load_data.sql
```

Then execute the script.

### 5. Run the Data Quality Audit

Run:

```text
sql/04_data_quality_audit.sql
```

### 6. Run the Cleaning Pipeline

Run:

```text
sql/05_cleaning_pipeline.sql
```

### 7. Run the Analytics Queries

Run:

```text
sql/06_analytics_queries.sql
```

## Python Setup

Install the required Python packages:

```bash
pip install -r requirements.txt
```

Then run the Python pipeline:

```bash
python pipeline.py
```

Make sure your local PostgreSQL connection settings are configured correctly and that credentials are not committed to the repository.

## Key Outcomes

This project demonstrates practical skills in:

* Data Quality Assessment
* Exploratory Data Analysis
* Data Cleaning
* SQL
* PostgreSQL
* Python Data Analysis
* Data Visualization
* Data Pipeline Development
* Analytical Problem Solving

## Disclaimer

This project is created for educational and portfolio purposes. Any donor information included in the dataset should be synthetic or appropriately anonymized.
