# SQL Project: E-Commerce Database Management and Analysis
## Project Overview
This project involves creating a schema for a SQL relational database system, exploring various aspects of database management, from basic CRUD operations to advanced topics like joins, aggregation, indexing, and optimization. It includes designing, implementing, and querying a relational database for a fictional e-commerce platform. This involves creating tables, performing data manipulations, and extracting meaningful insights using SQL queries.

## Objectives
- Design a relational database schema for an e-commerce platform.
- Perform data insertion, updates, and deletions (CRUD operations).
- Write SQL queries to answer analytical questions.
- Demonstrate indexing and query optimization techniques.

## Project Requirements
1. Database Design
Design and implement a schema with the following tables:

*Customers*
- `customer_id` (Primary Key)
- `name`
- `email`
- `phone_number`
- `address` (Street, City, State, Postal Code)

*Products*
- `product_id` (Primary Key)
- `product_name`
- `category`
- `price`
- `stock_quantity`

*Orders*
- `order_id` (Primary Key)
- `customer_id` (Foreign Key referencing Customers)
- `order_date`
- `total_amount`

*Order_Items*
- `order_item_id` (Primary Key)
- `order_id` (Foreign Key referencing Orders)
- `product_id` (Foreign Key referencing Products)
- `quantity`
- `price`

2. Tasks to Complete
*Schema Creation*
- Define the tables with appropriate data types and constraints.
- Ensure the database adheres to normalization principles.
- Data Insertion and Manipulation
- Populate the tables with sample data for customers, products, orders, and order items.
- Perform CRUD operations to update, delete, and retrieve records.

*Query Writing*
- Write SQL queries to answer business questions, such as:
- What are the total sales for a given product category?
- Which customers have placed the highest number of orders?
- What is the most frequently purchased product?

*Optimization*
- Create indexes to improve query performance.
- Analyze query execution plans and adjust queries for better performance.