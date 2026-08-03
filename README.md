# 🏠 Airbnb End-to-End Data Engineering Project

## 📋 Overview

This project implements a complete **end-to-end data engineering pipeline** for Airbnb data using modern cloud technologies.

The solution demonstrates best practices in **data warehousing, transformation, and analytics** using **Snowflake**, **dbt (Data Build Tool)**, and **AWS**.

The pipeline processes Airbnb **Listings**, **Bookings**, and **Hosts** data through a **Medallion Architecture (Bronze → Silver → Gold)** while implementing:

- Incremental Loading
- Slowly Changing Dimensions (SCD Type 2)
- Modular dbt Models
- Analytics-ready Data Warehouse

---

# 🏗️ Architecture

## Data Flow

```text
             Source Data (CSV)
                     │
                     ▼
                 AWS S3 Bucket
                     │
                     ▼
          Snowflake Staging Tables
                     │
                     ▼
               🥉 Bronze Layer
                     │
                     ▼
               🥈 Silver Layer
                     │
                     ▼
                🥇 Gold Layer
                     │
                     ▼
          Analytics & BI Reporting
```

---

# 🚀 Technology Stack

| Technology | Purpose |
|------------|----------|
| ❄️ Snowflake | Cloud Data Warehouse |
| ⚙️ dbt | Data Transformation |
| ☁️ AWS S3 | Data Storage |
| 🐍 Python 3.12 | Development |
| 📝 SQL | Data Transformation |
| 🔀 Git | Version Control |
| 🐙 GitHub | Repository Hosting |

---

# ✨ Key dbt Features

- ✅ Incremental Models
- ✅ Snapshots (SCD Type 2)
- ✅ Jinja Templating
- ✅ Custom Macros
- ✅ Data Testing
- ✅ Documentation
- ✅ Modular SQL

---

# 📊 Data Model

## 🏗️ Medallion Architecture

### 🥉 Bronze Layer (Raw Data)

Raw data is loaded from the staging schema with minimal transformations.

Tables:

- `bronze_bookings`
- `bronze_hosts`
- `bronze_listings`

---

### 🥈 Silver Layer (Cleaned Data)

Data cleaning, validation, and business logic.

Tables:

- `silver_bookings`
- `silver_hosts`
- `silver_listings`

Features:

- Standardized data
- Data quality improvements
- Price categorization
- Host quality metrics

---

### 🥇 Gold Layer (Business Layer)

Analytics-ready models optimized for reporting.

Tables:

- `obt` (One Big Table)
- `fact`

Also includes:

- Ephemeral Models
- Business Metrics

---

# 📸 Snapshots (SCD Type 2)

Historical tracking using dbt Snapshots.

Tables:

- `dim_bookings`
- `dim_hosts`
- `dim_listings`

Features:

- Historical version tracking
- `dbt_valid_from`
- `dbt_valid_to`
- Current record identification

## 📁 Project Structure

```text
AWS_DBT_Snowflake/
│
├── README.md
│   └── Project documentation, setup guide, architecture, and usage instructions.
│
├── pyproject.toml
│   └── Python project configuration and dependency management.
│
├── main.py
│   └── Optional Python entry point for running project utilities or automation.
│
├── SourceData/
│   ├── bookings.csv
│   ├── hosts.csv
│   └── listings.csv
│   └── Raw Airbnb datasets used as the source for the pipeline.
│
├── DDL/
│   ├── ddl.sql
│   └── resources.sql
│   └── SQL scripts used to create databases, schemas, tables, warehouses,
│       and other Snowflake resources.
│
└── aws_dbt_snowflake_project/
    │
    ├── dbt_project.yml
    │   └── Main dbt project configuration defining models, materializations,
    │       schemas, and project settings.
    │
    ├── ExampleProfiles.yml
    │   └── Sample Snowflake connection profile.
    │       (Actual profiles.yml should never be committed to GitHub.)
    │
    ├── models/
    │   │
    │   ├── sources/
    │   │   └── Source definitions and freshness tests for raw Snowflake tables.
    │   │
    │   ├── bronze/
    │   │   └── Raw ingestion layer with incremental loading from staging tables.
    │   │
    │   ├── silver/
    │   │   └── Cleaned, standardized, and business-ready transformation layer.
    │   │
    │   └── gold/
    │       └── Analytics-ready dimensional models, fact tables,
    │           One Big Table (OBT), and reporting datasets.
    │
    ├── macros/
    │   └── Reusable Jinja SQL macros to eliminate repetitive SQL code
    │       and improve maintainability.
    │
    ├── analyses/
    │   └── Exploratory SQL queries and Jinja examples used for
    │       experimentation and debugging.
    │
    ├── snapshots/
    │   └── dbt Snapshot definitions implementing Slowly Changing
    │       Dimensions (SCD Type 2) for historical tracking.
    │
    ├── tests/
    │   └── Custom SQL tests and data quality validation rules.
    │
    └── seeds/
        └── Static CSV reference data loaded directly into Snowflake
            using dbt seed.
```


# 📈 Features Implemented

- ✔️ Incremental Loading
- ✔️ Bronze, Silver & Gold Layers
- ✔️ Slowly Changing Dimensions (SCD Type 2)
- ✔️ Jinja Loops
- ✔️ Jinja Variables
- ✔️ Custom Macros
- ✔️ Ephemeral Models
- ✔️ One Big Table (OBT)
- ✔️ Fact Table
- ✔️ Modular SQL Development
- ✔️ Snapshot Management

---

# 📷 Screenshots

> Add screenshots here:

- dbt Lineage Graph
- Snowflake Tables
- Query Results
- Architecture Diagram

Example:

```markdown
![Lineage](images/lineage.png)
```

---

# 📚 Learning Outcomes

Through this project, I gained hands-on experience with:

- Modern Data Engineering Architecture
- Snowflake Data Warehouse
- dbt Core
- SQL Transformations
- Incremental Models
- Snapshots (SCD Type 2)
- Jinja Templating
- Data Warehouse Design
- Git & GitHub

---

# 👨‍💻 Author

**Pradeep Prakash**

🔗 LinkedIn: *([Add your LinkedIn URL)](https://www.linkedin.com/in/visit-pradeepprakash/)*

🐙 GitHub: *(Add your GitHub Profile URL)*

---

## ⭐ If you found this project helpful, please consider giving it a star!
