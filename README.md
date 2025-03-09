# Data Engineering Case Study: Scalable Financial Data Pipeline  
🚀 **A financial data pipeline using ETL, PostgreSQL, and Apache Airflow.**  

## 📌 Project Overview  
This project modernizes data management for a **small credit institution**, transitioning from Excel-based reporting to a **scalable ETL pipeline and structured database**.

## 🛠️ Technologies Used  
- **Python** (Data Processing)  
- **PostgreSQL** (Database Storage)  
- **SQLAlchemy** (Database ORM)  
- **Apache Airflow** (Workflow Automation)  
- **Pandas** (Data Transformation)  

---

## 📂 Folder Structure  
 data-engineering-case-study
┣ 📂 notebooks # Jupyter Notebooks for data cleaning
┣ 📂 sql # PostgreSQL schema files
┣ 📂 data # Cleaned CSV files
┣ 📜 etl_pipeline.py # Python script for ETL
┣ 📜 README.md # Project Documentation
┣ 📜 data_cleaning.log # Log of cleaning operations

yaml
Copy
Edit

---

## 🚀 How to Run the Project  

### 1️⃣ Install Dependencies  
Before running the pipeline, install all required libraries:  
```bash
pip install pandas sqlalchemy psycopg2-binary
CREATE DATABASE financial_data;
CREATE DATABASE financial_data;
Run the SQL schema:psql -U your_user -d financial_data -f sql/schema.sql
Run the ETL Pipelinepython etl_pipeline.py
python etl_pipeline.py
Database Schema
The database consists of three main tables:

accounts → Stores customer account details
deposits → Stores deposit transaction records
loans → Stores loan transaction records
📌 Queries for Data Analysis
🔹 View Top 5 Accounts
sql
Copy
Edit
SELECT * FROM accounts LIMIT 5;
🔹 Total Deposits per Customer
sql
Copy
Edit
SELECT customer_id, SUM(amount) FROM deposits GROUP BY customer_id;

