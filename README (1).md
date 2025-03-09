# 🚀 Data Engineering Case Study: Scalable Financial Data Pipeline

## 📌 Project Overview
This project addresses the **limitations of Excel-based data management** in a financial institution by implementing a **scalable and automated data pipeline**. The solution includes:
✅ **Automated ETL Pipeline** to process financial data.  
✅ **PostgreSQL/Snowflake database** for structured storage.  
✅ **Apache Airflow** for scheduling and automation.  
✅ **Data Quality & Integrity Checks** to ensure accuracy.  

---

## 📊 1️⃣ Data Model (ERD)
The **Entity-Relationship Diagram (ERD)** defines how **Customers, Accounts, Deposits, and Loans** interact:

![ERD Diagram](./images/erd_diagram.png)

---

## 🛠️ 2️⃣ Technical Implementation

### **🔹 ETL Pipeline**
- **Extract:** Reads data from CSV files (future support for APIs).  
- **Transform:** Cleans and standardizes data (handles missing values, duplicates, and currency conversions).  
- **Load:** Stores structured data in a **PostgreSQL or Snowflake database**.  

### **🔹 Database Schema (PostgreSQL)**
```sql
CREATE TABLE customers (
    customer_id VARCHAR(100) PRIMARY KEY,
    customer_type VARCHAR(50) CHECK (customer_type IN ('Household', 'Corporate', 'Financial Corporation'))
);
CREATE TABLE accounts (
    account_id SERIAL PRIMARY KEY,
    customer_id VARCHAR(100) REFERENCES customers(customer_id),
    account_name VARCHAR(255),
    account_type VARCHAR(50),
    balance DECIMAL(18,2),
    currency VARCHAR(10),
    reference_date DATE
);
```
*(Full schema available in `sql/schema.sql`)*

### **🔹 Automation with Apache Airflow**
- **Daily ETL runs** scheduled with **Airflow DAGs**.
- **Automated data validation** before ingestion.
- **Alerts & Logging** to track failures.

---

## 🚀 3️⃣ Setup Instructions

### **🔹 1. Clone Repository**
```bash
git clone https://github.com/yourusername/data-engineering-case-study.git
cd data-engineering-case-study
```

### **🔹 2. Install Dependencies**
```bash
pip install -r requirements.txt
```

### **🔹 3. Run the ETL Pipeline**
```bash
python etl_pipeline.py
```

### **🔹 4. Deploy Database**
```bash
psql -U youruser -d yourdatabase -f sql/schema.sql
```

### **🔹 5. Schedule ETL with Airflow**
```bash
airflow scheduler &
airflow webserver
```

---

## 📈 4️⃣ Business Impact
✅ **Handles Millions of Transactions Per Year**  
✅ **Automates Data Processing & Improves Efficiency**  
✅ **Supports New Financial Products & Regulatory Changes**  
✅ **Reduces Errors & Ensures Data Accuracy**  

---

## 📌 Future Enhancements
🚀 **Data Quality Monitoring** with **Great Expectations**  
🚀 **Performance Optimization** (Partitioning & Indexing)  
🚀 **Predictive Analytics** (Credit Risk AI Models)  

---

## 💡 Contributors
- **Your Name** | [LinkedIn](https://www.linkedin.com/) | [GitHub](https://github.com/yourusername)
- Open to collaboration! Feel free to contribute! 🎉

