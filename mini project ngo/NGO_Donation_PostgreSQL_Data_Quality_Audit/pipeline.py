import os
import pandas as pd
from sqlalchemy import create_engine

user = os.getenv('POSTGRES_USER', 'postgres')
password = os.getenv('POSTGRES_PASSWORD', 'your_password')
host = os.getenv('POSTGRES_HOST', 'localhost')
port = os.getenv('POSTGRES_PORT', '5432')
database = os.getenv('POSTGRES_DB', 'ngo_donations')

engine = create_engine(f'postgresql+psycopg2://{user}:{password}@{host}:{port}/{database}')

df = pd.read_csv('data/ngo_donations_raw.csv')
df['amount'] = pd.to_numeric(df['amount'].astype(str).str.replace(r'[^\\d.]', '', regex=True), errors='coerce')
df['donation_date'] = pd.to_datetime(df['date'], format='mixed', dayfirst=True, errors='coerce')
df['payment_method'] = df['payment_method'].astype(str).str.strip().str.lower()
df['email'] = df['email'].fillna('Unknown')
df = df.drop_duplicates().copy()
df['month'] = df['donation_date'].dt.to_period('M').astype(str)
df = df[['donation_id','donor_name','amount','donation_date','payment_method','email','month']]
df.to_sql('donations_cleaned', engine, if_exists='replace', index=False)
print('Cleaned data loaded into PostgreSQL.')
