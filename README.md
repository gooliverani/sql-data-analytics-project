# 📊 SQL Data Analytics Project

A comprehensive collection of SQL scripts for data exploration, analytics, and reporting on a data warehouse. This project demonstrates various analytical techniques including magnitude analysis, ranking, change over time, and cumulative analysis.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

---

## 🔗 Project Relationship

This project is a **companion analytics extension** of the [sql-data-warehouse-project](https://github.com/gooliverani/sql-data-warehouse-project). It demonstrates how to perform advanced data analytics and reporting on warehouse data.

**Key Points:**
- 📦 **Builds upon**: This project extends the foundational data warehouse created in the `sql-data-warehouse-project`
- 🔄 **Data Source Options**: You can either use the data from the existing data warehouse project (recommended) or use the CSV files provided in this repository
- 🎯 **Purpose**: Demonstrates practical analytics, reporting, and business intelligence techniques on warehouse data
- 🔗 **Prerequisite**: For best results, first complete the [sql-data-warehouse-project](https://github.com/gooliverani/sql-data-warehouse-project) to understand the data warehouse foundation

---

## 📋 Table of Contents

- [Overview](#overview)
- [Database Schema](#database-schema)
- [Project Structure](#project-structure)
- [Analysis Categories](#analysis-categories)
- [Key Features](#key-features)
- [Getting Started](#getting-started)
- [Reports](#reports)
- [SQL Techniques Demonstrated](#sql-techniques-demonstrated)
- [Requirements](#requirements)
- [License](#license)

---

## 🎯 Overview

This is a **companion analytics project** that demonstrates how to perform comprehensive data analysis and reporting on a data warehouse. This repository contains SQL queries designed to help data analysts and BI professionals quickly explore, segment, and analyze data within a relational database. The project implements a **star schema** data warehouse model with fact and dimension tables.

**This project demonstrates analytics on the warehouse data created in the [sql-data-warehouse-project](https://github.com/gooliverani/sql-data-warehouse-project).**

**Use Cases:**
- Sales performance analysis
- Customer segmentation and behavior analysis
- Product performance tracking
- Time-series trend analysis
- KPI calculation and monitoring

---

## 🗄️ Database Schema

The project uses a **DataWarehouseAnalytics** database with the following structure:

### Fact Table
- **`gold.fact_sales`** - Contains transactional sales data
  - `order_number`, `product_key`, `customer_key`
  - `order_date`, `shipping_date`, `due_date`
  - `sales_amount`, `quantity`, `price`

### Dimension Tables
- **`gold.dim_customers`** - Customer master data
  - `customer_key`, `customer_id`, `customer_number`
  - `first_name`, `last_name`, `country`
  - `marital_status`, `gender`, `birthdate`, `create_date`

- **`gold.dim_products`** - Product master data
  - `product_key`, `product_id`, `product_number`
  - `product_name`, `category`, `subcategory`
  - `maintenance`, `cost`, `product_line`, `start_date`

---

## 📁 Project Structure

```
sql-data-analytics-project/
├── datasets/           # CSV data files for bulk import
│   └── csv-files/
│       ├── gold.dim_customers.csv
│       ├── gold.dim_products.csv
│       └── gold.fact_sales.csv
├── docs/              # Documentation files
├── scripts/           # SQL scripts organized by analysis type
│   ├── 00_init_database.sql
│   ├── 001_ dimensions&measures.sql
│   ├── 01_database_exploration.sql
│   ├── 04_measures_exploration.sql
│   ├── 05_magnitude_analysis.sql
│   ├── 06_ranking_analysis.sql
│   ├── 07_change_over_time_analysis.sql
│   ├── 08_cumulative_analysis.sql
│   ├── 12_report_customers.sql
│   └── 13_report_products.sql
├── LICENSE
└── README.md
```

---

## 🔍 Analysis Categories

### 1. **Database Exploration** (`01_database_exploration.sql`)
- Explore database structure and metadata
- Inspect table schemas and column definitions
- Use `INFORMATION_SCHEMA` views

### 2. **Dimensions & Measures** (`001_ dimensions&measures.sql`)
- Understand the difference between dimensions and measures
- Identify which fields are aggregatable

### 3. **Measures Exploration** (`04_measures_exploration.sql`)
- Calculate key business metrics (KPIs)
- Total sales, quantity, orders
- Average prices and customer counts

### 4. **Magnitude Analysis** (`05_magnitude_analysis.sql`)
- Group data by dimensions
- Calculate totals and averages by category, country, gender
- Understand data distribution

### 5. **Ranking Analysis** (`06_ranking_analysis.sql`)
- Identify top and bottom performers
- Rank products by revenue
- Find best and worst customers
- Use window functions: `RANK()`, `DENSE_RANK()`, `ROW_NUMBER()`

### 6. **Change Over Time** (`07_change_over_time_analysis.sql`)
- Track trends and growth
- Analyze sales performance by year/month
- Identify seasonality patterns
- Use date functions: `DATEPART()`, `DATETRUNC()`, `FORMAT()`

### 7. **Cumulative Analysis** (`08_cumulative_analysis.sql`)
- Calculate running totals
- Compute moving averages
- Track cumulative growth over time

### 8. **Customer Report** (`12_report_customers.sql`)
- Comprehensive customer analytics view
- Customer segmentation (VIP, Regular, New)
- Age group analysis
- RFM-style metrics

### 9. **Product Report** (`13_report_products.sql`)
- Product performance metrics
- Product segmentation (High/Mid/Low performers)
- Lifecycle and recency analysis

---

## ✨ Key Features

### Customer Analytics
- **Customer Segmentation**: VIP, Regular, and New customers based on lifespan and spending
- **Age Group Analysis**: Demographic segmentation
- **RFM Metrics**: Recency, Frequency (orders), Monetary (spend) analysis
- **KPIs**: Average Order Value (AOV), Average Monthly Spend, Lifetime Value

### Product Analytics
- **Product Segmentation**: High-Performers, Mid-Range, Low-Performers
- **Performance Metrics**: Total orders, sales, quantity, customer reach
- **Recency Tracking**: Months since last sale
- **KPIs**: Average Order Revenue (AOR), Average Monthly Revenue, Lifespan

### Advanced SQL Techniques
- Common Table Expressions (CTEs)
- Window Functions (`SUM() OVER`, `AVG() OVER`, `ROW_NUMBER()`)
- Date Manipulation and Time-Series Analysis
- Aggregation and Grouping
- Joins (LEFT JOIN)
- CASE statements for segmentation
- NULL handling with `NULLIF()`

---

## 🚀 Getting Started

### Prerequisites
- Microsoft SQL Server (2016 or later recommended for `DATETRUNC()` support)
- SQL Server Management Studio (SSMS) or Azure Data Studio
- Basic understanding of SQL and data warehousing concepts
- **Recommended**: Complete the [sql-data-warehouse-project](https://github.com/gooliverani/sql-data-warehouse-project) first to set up the foundational data warehouse

### Data Source Options

You have **two options** for working with this project:

#### ✅ **Option 1: Use Data from the Data Warehouse Project (Recommended)**

This is the recommended approach as it demonstrates the full end-to-end workflow from data warehouse creation to analytics.

1. **Complete the data warehouse project first**
   - Clone and follow the setup instructions at [sql-data-warehouse-project](https://github.com/gooliverani/sql-data-warehouse-project)
   - This creates the `DataWarehouseAnalytics` database with all necessary tables and data

2. **Clone this analytics repository**
   ```bash
   git clone https://github.com/gooliverani/sql-data-analytics-project.git
   cd sql-data-analytics-project
   ```

3. **Run the analysis scripts directly**
   - Since the database and data already exist from the warehouse project, you can directly execute the analysis scripts in the `scripts/` folder
   - Start with `01_database_exploration.sql` and progress through the numbered scripts

4. **Create analytical views**
   - Run `12_report_customers.sql` and `13_report_products.sql` to create comprehensive report views

#### 🔄 **Option 2: Use the CSV Files in This Repository**

If you want to work standalone without the data warehouse project, you can load data from the included CSV files.

1. **Clone the repository**
   ```bash
   git clone https://github.com/gooliverani/sql-data-analytics-project.git
   cd sql-data-analytics-project
   ```

2. **Update file paths in `00_init_database.sql`**
   
   Modify the `BULK INSERT` statements to point to your local dataset location:
   ```sql
   BULK INSERT gold.dim_customers
   FROM 'YOUR_PATH\datasets\csv-files\gold.dim_customers.csv'
   ```

3. **Initialize the database**
   
   Run `scripts/00_init_database.sql` to:
   - Create the `DataWarehouseAnalytics` database
   - Create schema and tables
   - Load data from CSV files

4. **Run analysis scripts**
   
   Execute scripts in order to perform different types of analysis

5. **Create report views**
   
   Run `12_report_customers.sql` and `13_report_products.sql` to create analytical views

---

## 📈 Reports

### Customer Report View
```sql
SELECT * FROM gold.report_customers
```

**Columns:**
- Customer identification and demographics
- Segmentation (VIP/Regular/New)
- Age groups
- Total orders, sales, quantity, products
- Recency (months since last order)
- Lifespan (customer tenure in months)
- Average Order Value (AOV)
- Average Monthly Spend

### Product Report View
```sql
SELECT * FROM gold.report_products
```

**Columns:**
- Product details (name, category, subcategory, cost)
- Product segmentation (High/Mid/Low performer)
- Last sale date and recency
- Total orders, sales, quantity, customers
- Lifespan (months on market)
- Average Selling Price
- Average Order Revenue (AOR)
- Average Monthly Revenue

---

## 💻 SQL Techniques Demonstrated

| Technique | Scripts | Purpose |
|-----------|---------|---------|
| **Aggregate Functions** | 04, 05, 06 | `SUM()`, `COUNT()`, `AVG()`, `MIN()`, `MAX()` |
| **Window Functions** | 06, 08 | `ROW_NUMBER()`, `RANK()`, `SUM() OVER()`, `AVG() OVER()` |
| **CTEs** | 12, 13 | Organize complex queries into readable steps |
| **Date Functions** | 07, 08 | `DATEPART()`, `DATETRUNC()`, `DATEDIFF()`, `FORMAT()` |
| **Joins** | 05, 06, 12, 13 | Combine fact and dimension tables |
| **CASE Expressions** | 12, 13 | Business logic for segmentation |
| **Subqueries** | 06 | Filtering and ranking |
| **UNION ALL** | 04 | Combine multiple metric queries |
| **GROUP BY** | 05, 06, 07 | Aggregate data by dimensions |

---

## 📊 Sample Queries

### Find Top 5 Products by Revenue
```sql
SELECT TOP 5
    p.product_name,
    SUM(f.sales_amount) AS total_revenue
FROM gold.fact_sales AS f
LEFT JOIN gold.dim_products AS p
    ON p.product_key = f.product_key
GROUP BY p.product_name
ORDER BY total_revenue DESC;
```

### Analyze Sales Trends Over Time
```sql
SELECT
    FORMAT(order_date, 'yyyy-MM') AS order_month,
    SUM(sales_amount) AS total_sales,
    COUNT(DISTINCT customer_key) AS unique_customers
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY FORMAT(order_date, 'yyyy-MM')
ORDER BY order_month;
```

### Customer Segmentation
```sql
SELECT
    customer_segment,
    COUNT(*) AS customer_count,
    AVG(total_sales) AS avg_lifetime_value
FROM gold.report_customers
GROUP BY customer_segment;
```

---

## 🛠️ Requirements

- **Database**: Microsoft SQL Server 2016+
- **Tools**: SQL Server Management Studio (SSMS) or Azure Data Studio
- **Dataset**: CSV files included in `datasets/csv-files/`

---

## 🤝 Contributing

Contributions are welcome! If you'd like to add new analysis scripts or improve existing ones:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/new-analysis`)
3. Commit your changes (`git commit -m 'Add new analysis script'`)
4. Push to the branch (`git push origin feature/new-analysis`)
5. Open a Pull Request

---

## 📝 License

This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and share this project with proper attribution.

---

## 🔗 Resources

- [SQL Server Documentation](https://docs.microsoft.com/en-us/sql/)
- [Window Functions Guide](https://docs.microsoft.com/en-us/sql/t-sql/queries/select-over-clause-transact-sql)
- [Data Warehousing Concepts](https://en.wikipedia.org/wiki/Data_warehouse)

---

## 🙏 Acknowledgments

This project is part of the comprehensive SQL course by **DataWithBaraa**. Special thanks to Baraa for creating excellent educational content on data analytics and SQL!

**Connect with DataWithBaraa:**
- 🎥 [YouTube Channel](https://www.youtube.com/@DataWithBaraa)
- 🌐 [Website](https://www.datawithbaraa.com/)
- 💻 [GitHub](https://github.com/DataWithBaraa)

---

## 📧 Contact

For questions or suggestions, please open an issue in this repository.

---

**⭐ If you find this project helpful, please consider giving it a star!**