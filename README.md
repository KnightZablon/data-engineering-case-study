 Data Engineering Case Study: Scalable Financial Data Pipeline  
A financial data pipeline using ETL, PostgreSQL, and Apache Airflow.  

 Project Overview  
This project modernizes data management for a small credit institution, transitioning from Excel-based reporting to a scalable ETL pipeline and structured database.

 Technologies Used  
- Python (Data Processing)  
- PostgreSQL (Database Storage)  
- SQLAlchemy (Database ORM)  
- Apache Airflow (Workflow Automation)  
- Pandas (Data Transformation)  


 Folder Structure  
📦 data-engineering-case-study
 📂 notebooks # Jupyter Notebooks for data cleaning
 📂 sql # PostgreSQL schema files
 📂 data # Cleaned CSV files
 📜 etl_pipeline.py # Python script for ETL
 📜 README.md # Project Documentation
 📜 data_cleaning.log # Log of cleaning operations

 How to Run the Project  

Install Dependencies  
1. Before running the pipeline, install all required libraries:  
```bash
pip install pandas sqlalchemy psycopg2-binary
 Set Up PostgreSQL Database
2. Create a new PostgreSQL database:
sql
Copy
Edit
CREATE DATABASE financial_data;
Run the SQL schema:
bash
psql -U your_user -d financial_data -f sql/schema.sql
3. Run the ETL Pipeline
bash
Copy
Edit
python etl_pipeline.py
4. Database Schema
The database consists of three main tables:

accounts → Stores customer account details
deposits → Stores deposit transaction records
loans → Stores loan transaction records

- Data Quality & Validation
Challenges Found in Data Cleaning:
Negative Values in Accounts.csv and Loans.csv
Inconsistent Date Formats
Duplicate Records
 Example of Data Cleaning Log Output:
2025-03-09 11:28:17,751 - WARNING - Negative values found in Accounts.csv:
account_number: 2099, amount: -53076592.00

- How the Pipeline Handles It:
Cleans missing data intelligently.
Ensures all amounts are positive (or logs exceptions).
Standardizes all dates.
Removes duplicate records.

- Business Impact & Scalability
Why Excel Fails
Not Scalable: Excel struggles with millions of rows.
No Automation: Manual processes introduce errors.
Slow Queries: Excel lacks optimized query processing.
How This Project Solves It
✅ ETL Automation: Extracts, cleans, and loads data without manual work.
✅ Handles Millions of Rows: Built to scale by 10% annually.
✅ Supports New Products: Expandable data model for future financial products.

 Queries for Data Analysis
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
📌 Future Enhancements
To improve the system further:
✅ Automated Anomaly Detection: Flagging suspicious transactions
✅ Integration with BI Tools: Connecting to Tableau or Power BI
✅ Performance Optimization: Indexing & partitioning for faster queries
✅ Machine Learning: Predictive models for loan defaults & risk scoring

 Author & Case Study Information
This project is part of a Data Engineering Case Study for a financial institution.

 Organization: Advisense AB
 Location: ÖSTERMALMSTORG 1, 5TR, STOCKHOLM, SWEDEN
 Date: 2025-02-27

Company Website: Advisense.com


📬 Contact & Contribution (knight Zablon)
Want to contribute? Feel free to create a pull request! 🚀





