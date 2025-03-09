import pandas as pd
import psycopg2
from sqlalchemy import create_engine

# Database connection details
DB_NAME = "your_database"
DB_USER = "your_user"
DB_PASSWORD = "your_password"
DB_HOST = "your_host"
DB_PORT = "5432"

# Create database connection
engine = create_engine(f"postgresql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}")

def clean_and_load_csv(file_path, table_name):
    try:
        # Load CSV
        df = pd.read_csv(file_path)

        # Data Cleaning
        df.columns = df.columns.str.strip().str.lower()  # Normalize column names
        df.drop_duplicates(inplace=True)  # Remove duplicates

        # Convert date columns
        date_cols = ["start_date", "maturity_date", "reference_date"]
        for col in date_cols:
            if col in df.columns:
                df[col] = pd.to_datetime(df[col], errors="coerce")

        # Replace "null" with NaN
        df.replace("null", pd.NA, inplace=True)

        # Load data into PostgreSQL
        df.to_sql(table_name, engine, if_exists="append", index=False)
        print(f"✅ Data successfully loaded into {table_name}.")
    
    except Exception as e:
        print(f"❌ Error processing {file_path}: {e}")

# Run ETL for all CSV files
clean_and_load_csv("cleaned_files/Cleaned_Accounts.csv", "accounts")
clean_and_load_csv("cleaned_files/Cleaned_Deposits.csv", "deposits")
clean_and_load_csv("cleaned_files/Cleaned_Loans.csv", "loans")

print("🚀 ETL Process Completed!")

