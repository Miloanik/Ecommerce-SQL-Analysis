# Ecommerce SQL Analysis 📊

## Overview  
This project contains SQL queries for analyzing e-commerce sales data. The dataset includes transaction details like invoice numbers, stock codes, item descriptions, quantities, prices, and customer locations.

## Database Schema  
- **InvoiceNo**: Unique identifier for each transaction  
- **StockCode**: Product code  
- **Description**: Item description  
- **Quantity**: Number of items sold (must be >0)  
- **InvoiceDate**: Timestamp of the transaction  
- **UnitPrice**: Price per unit (must be >0)  
- **CustomerID**: Unique customer identifier  
- **Country**: Country of purchase  

## Queries  
### 1️⃣ Table Creation & Data Insertion ✅  
- The database is structured using **PostgreSQL**, and data is inserted using `COPY` from a CSV file.  

### 2️⃣ Sales Analysis Queries ✅  
These queries help analyze **sales trends and customer behavior**, such as:  
- **Top-selling products**  
```sql
SELECT Description, SUM(Quantity) AS TotalSold
FROM ecommerce_data
GROUP BY Description
ORDER BY TotalSold DESC
LIMIT 10;
