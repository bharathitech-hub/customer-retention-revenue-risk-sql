# customer-retention-revenue-risk-sql
SQL-based analysis project focused on identifying revenue concentration risks, early churn signals, and customer prioritization using a relational data model and business-driven insights.


📌 Project Overview

This project focuses on analyzing customer retention and revenue risk using SQL by modeling real-world business data and extracting actionable insights.
Instead of simple reporting, the analysis is designed to support business decisions such as customer prioritization, churn prevention, and revenue protection.

The project simulates a transactional business environment and applies SQL to identify high-value customers, early churn signals, and revenue concentration risks.


🎯 Business Objective

The primary objective of this project is to answer the following business questions:

How dependent is the business on a small group of high-value customers?

Which customers contribute the most long-term value?

Can early churn risks be identified before revenue loss occurs?

Do payment failures impact future customer behavior?

How does retention vary across customer cohorts?

Which customers should be prioritized for retention or upsell actions?


🧠 Project Approach

The project follows a schema-first, business-driven approach:

Designed a normalized relational database schema representing customers, orders, payments, and support interactions.

Generated realistic transactional data to reflect real customer behavior patterns.

Used SQL to answer business-critical questions rather than exploratory or generic queries.

Converted query results into actionable business insights.

This mirrors how SQL is used in real analytics and decision-support environments.


🗂️ Database Schema

The project uses four core tables:

customers – Customer profile and signup information

orders – Revenue-generating customer transactions

payments – Payment success and failure tracking

support_interactions – Customer support and issue history

These tables are connected through primary and foreign key relationships to support meaningful joins and analysis.


📊 Business Questions Addressed

How much of total revenue is driven by the top 10% of customers?

Which customers contribute the highest lifetime revenue and order frequency?

Which customers show early churn signals based on declining orders and rising support tickets?

Is there a relationship between payment failures and reduced future ordering behavior?

How does customer retention vary across signup cohorts and customer segments?

Which customers should be prioritized for retention, upsell, or no immediate action?


🧩 Key Insights

A small percentage of customers contribute a disproportionately large share of total revenue, indicating revenue concentration risk.

High-value customers are defined by consistent ordering behavior, not just one-time purchases.

Increased support interactions often appear before a decline in purchasing activity, making them effective early churn indicators.

Payment failures are associated with reduced future order activity, linking operational issues to retention risk.

Retention patterns vary significantly across signup cohorts and customer segments.

Customers can be segmented into retention-priority, upsell-opportunity, and no-action groups to enable targeted business decisions.


🛠️ Tools & Technologies

SQL (MySQL / PostgreSQL compatible syntax)

CSV datasets for data storage and loading

GitHub for project version control and documentation
