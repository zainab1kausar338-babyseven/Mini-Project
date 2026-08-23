# NGO Donation Data Quality Audit and PostgreSQL Pipeline

**Student:** Zainab Kausar  
**Student ID:** DC-238

## Overview
A PostgreSQL-centered data engineering project for auditing, cleaning and analyzing NGO donation data.

**Workflow:** CSV → PostgreSQL Raw Table → SQL Audit → SQL Cleaning → PostgreSQL Clean Table → Analytics → Python

## Dataset
- Raw records: 200
- Missing emails: 19 (9.5%)
- Exact duplicate rows: 5
- Cleaned records: 195

## Technologies
PostgreSQL, SQL, Python, Pandas, NumPy, Matplotlib, SQLAlchemy, Psycopg2, Jupyter.

## Setup
1. Install PostgreSQL and pgAdmin.
2. Run `sql/01_create_database.sql`.
3. Connect to `ngo_donations`.
4. Run `sql/02_create_tables.sql`.
5. Edit the CSV path in `sql/03_load_data.sql` and run it.
6. Run `sql/04_data_quality_audit.sql`.
7. Run `sql/05_cleaning_pipeline.sql`.
8. Run `sql/06_analytics_queries.sql`.

## Python
```bash
pip install -r requirements.txt
```
Set your PostgreSQL password without committing it:
```powershell
$env:POSTGRES_PASSWORD="your_password"
```
Then:
```bash
python pipeline.py
```

## Business questions
1. What percentage of donation records have missing contact information?
2. How many duplicate donation entries exist?
3. What is total donation amount by payment method and month?
4. Which columns need data-type conversion?
5. Are there unusually large donation amounts?
