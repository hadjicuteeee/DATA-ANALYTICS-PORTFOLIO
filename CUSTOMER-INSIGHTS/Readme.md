
# Sales Data Analysis and Visualization

## 📌 Project Overview
This project is focused on analyzing sales data using **SQL queries**.  
After generating insights, the results are exported to **JSON format** for easier integration and later used in **data visualization tools** such as Power BI / Tableau.

The workflow includes:
1. SQL Queries (Analysis of Customers, Products, and Sales)
2. Export to JSON format
3. Visualization and Dashboard

---

## 🗂 Database Schema

### Customers Table
```sql
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    location VARCHAR(50)
);
