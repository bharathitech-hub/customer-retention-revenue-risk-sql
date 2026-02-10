# customer-retention-revenue-risk-sql

SQL-based business analysis project focused on identifying **revenue concentration risks**, **early churn signals**, and **customer prioritization opportunities** using a normalized relational data model and decision-oriented insights.

---

## 📌 Project Overview

This project analyzes customer retention and revenue risk in a simulated transactional business environment using SQL.  
Rather than simple reporting, the analysis is designed to support **real business decisions** such as customer prioritization, churn prevention, and revenue protection.

The project models realistic customer behavior across transactions, payments, and support interactions, and applies SQL to surface insights that would typically inform product, finance, and retention teams.

---

## 🎯 Business Objectives

The project aims to answer the following business-critical questions:

- How dependent is the business on a small group of high-value customers?
- Which customers contribute the highest long-term value?
- Can early churn risks be identified before revenue loss occurs?
- Do payment failures influence future customer behavior?
- How does retention vary across different customer cohorts?
- Which customers should be prioritized for retention, upsell, or monitoring?

---

## 🧠 Project Approach

This project follows a **schema-first, business-driven approach**:

- Designed a normalized relational database schema representing customers, orders, payments, and support interactions.
- Generated realistic transactional datasets to reflect real-world customer behavior patterns.
- Used SQL to answer business-critical questions rather than generic or exploratory queries.
- Translated query results into actionable business insights and recommendations.

This mirrors how SQL is used in real analytics and decision-support environments.

---

## 🗂️ Database Schema

The analysis is built on four core tables:

- **customers** – Customer profile and signup information  
- **orders** – Revenue-generating customer transactions  
- **payments** – Payment success and failure tracking  
- **support_interactions** – Customer support activity and issue history  

These tables are connected using primary and foreign key relationships, enabling scalable joins and meaningful customer lifecycle analysis.

---

## 📊 Business Questions Addressed

- How much of total revenue is driven by the top percentage of customers?
- Which customers contribute the highest lifetime revenue and order frequency?
- Which customers show early churn signals based on declining activity and increased support interactions?
- Is there a relationship between payment failures and reduced future ordering behavior?
- How does customer retention vary across signup cohorts and customer segments?
- Which customers should be prioritized for retention actions, upsell opportunities, or no immediate intervention?

---

## 🧩 Key Insights

- A small percentage of customers contribute a disproportionately large share of total revenue, indicating revenue concentration risk.
- High-value customers are characterized by consistent engagement over time, not just one-time high purchases.
- Increased support interactions often precede a decline in purchasing activity, making them effective early churn indicators.
- Payment failures are associated with reduced future order activity, linking operational issues directly to retention risk.
- Retention patterns vary significantly across signup cohorts and customer segments.
- Customers can be segmented into **retention-priority**, **upsell-opportunity**, and **no-action** groups to enable targeted decision-making.

These insights support proactive retention strategies and revenue risk mitigation.

---

## 🗂️ Repository Structure
customer-retention-revenue-risk-sql/
├── README.md
├── LICENSE
├── schema.sql
│
├── data/
│ └── customers.csv
│
├── queries/
│ ├── revenue_concentration.sql
│ ├── churn_risk_signals.sql
│ ├── customer_segmentation.sql
│ ├── payment_failure_analysis.sql
│ └── cohort_retention.sql
│
└── insights/
└── business_insights.md
---

## 🛠️ Tools & Technologies

- **SQL** – Business analysis using MySQL / PostgreSQL-compatible syntax  
- **Relational Data Modeling** – Normalized schema design with primary and foreign keys  
- **CSV Datasets** – Structured data storage for reproducible analysis  
- **GitHub** – Version control and project documentation  

---

## 📈 Value Delivered

This project demonstrates how structured SQL analysis can be used to identify revenue risks, detect early churn signals, and guide customer prioritization decisions. It highlights the role of data-driven insights in supporting retention, growth, and operational improvements.

---

