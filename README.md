#  Project Title: Online Retail Sales Database Design

# Project Overview

This project simulates the backend of an online retail platform, similar to Amazon or Flipkart. It is designed to manage e-commerce data including **Products, Customers, Orders, Payments**, and generate sales insights using SQL queries and views.

The system demonstrates SQL schema design, data normalization, sample data insertion, and complex analytics using SQL.


# Project Objectives

- Design a normalized SQL schema in **Third Normal Form (3NF)**
- Create an **EER diagram** to model entity relationships
- Populate the schema with sample e-commerce data
- Write **JOIN** and **aggregate queries** for reporting
- Create **Views** for reusable sales analytics


# Key Database Entities

- **Customers** – Customer details like name, email, phone
- **Products** – Product name, price, stock, category
- **Orders** – Order ID, date, customer reference
- **OrderItems** – Items in each order with quantity
- **Payments** – Payment method and amount
- **Categories** – Product category classification


# Project Files Structure

ecommerce-database/
├── 1_DDL_CreateTables.sql         # Table structure & constraints
├── 2_DML_InsertData.sql           # Sample data insertions
├── 3_Queries_Analytics.sql        # Report queries using JOINs
├── 4_Views_SalesReports.sql       # Views for summarization
├── project 1 EER Diagram.png      # ER Diagram
├── ecommerce_project_report.pdf   # 2-page final project report
└── README.md                      # Project documentation


# Analytical Views Created

- `CustomerOrderSummary` – Total spend and order count per customer
- `ProductSalesReport` – Total quantity sold and revenue per product
- `HighValueCustomers` – Customers with spending above a set threshold
- `PaymentsByMethod` – Aggregated payment amounts by method


# ER Diagram

A fully connected **EER (Enhanced Entity Relationship) Diagram** was created in MySQL Workbench to show all table relationships.  

# Learning Outcomes

- Learned to design a normalized SQL database from scratch
- Gained experience with DDL, DML, and ER modeling
- Practiced writing advanced SQL queries using JOIN, GROUP BY, HAVING
- Created reusable SQL Views for business insights
- Understood real-world relational data handling in e-commerce systems


*Thank you for reviewing this project!*
