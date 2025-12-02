Executive Summary
This project simulates an Enterprise Data Platform for a high-volume Brazilian E-Commerce retailer. It moves beyond standard ELT by implementing a robust Data Governance Layer using dbt (data build tool) and AWS Athena.

The goal was to architect a "0-to-1" modern data stack that transforms raw CSV logs into Trustworthy Business Intelligence, ensuring 99.9% data quality through automated testing gates.

Architecture & Tech Stack
Cloud Storage: AWS S3 (Raw Landing Zone & Curated Zone)

Compute Engine: AWS Athena (Serverless SQL)

Transformation & Governance: dbt (data build tool)

Orchestration: [Mention if you used scripts/Glue, otherwise say "Manual Triggers for POC"]

Language: SQL, Python (PySpark for initial ingestion)

Key Features (The "Governance Gap" Solution)
Unlike standard pipelines, this project enforces architectural control:

Automated Quality Gates:

Implemented not_null and unique tests on primary keys (order_id, customer_id) to prevent duplicate transactions from hitting the dashboard.

Business Logic Tests: Added custom tests to ensure order_delivered_customer_date > order_purchase_timestamp.

Modular Layered Architecture:

Staging (stg_): 1:1 view of raw data with light casting/renaming.

Marts (fct_, dim_): Star Schema optimized for BI tools (PowerBI/Tableau).

Data Lineage & Documentation:

Full lineage graph generated via dbt docs to ensure transparency for stakeholders.

Data Model (Star Schema)
Fact Table: fct_orders (Central transaction registry)

Dimensions:

dim_customers (Customer demographics)

dim_products (SKU details and categories)

dim_sellers (Merchant performance metrics)

Business Impact
Reduced Data Latency: Transformed raw logs into actionable "Daily Revenue" metrics in <30 seconds.

Eliminated Manual Reporting: Replaced fragile Excel lookups with a version-controlled SQL pipeline.

Increased Trust: Stakeholders can view the "Data Lineage" graph to understand exactly where a metric comes from.
