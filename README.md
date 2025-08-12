# -Library-Management-System-4


# Task 4 – Aggregate Functions and Grouping

## Overview
This task demonstrates the use of SQL **aggregate functions** such as `COUNT`, `SUM`, `AVG`, and `ROUND`, along with `GROUP BY` and `HAVING` clauses to summarize and analyze database records.  
The queries are based on the Library Management System schema .

## Tools Used
- MySQL Workbench / DB Browser for SQLite
- GitHub for version control

### SQL Features Demonstrated
1. **COUNT(*)** – Count all rows in a table
2. **COUNT(column)** – Count non-NULL values in a column
3. **AVG()** – Calculate the average value of a numeric column
4. **SUM()** – Calculate the total sum of numeric values
5. **ROUND()** – Round numeric results
6. **GROUP BY** – Group results by one or more columns
7. **HAVING** – Filter grouped results
8. **DISTINCT** – Count unique values

###  Queries Included
1. Count total books in the library
2. Count books by category
3. Average published year by category
4. Total books issued per member
5. Filter members who issued more than 1 book
6. Count distinct authors
7. Round average published year by category

### Files Included
- `aggregate.sql` – SQL script with all aggregation and grouping queries
- `README.md` – This documentation

### How to Use
1. Load the database schema from **Task 1** (`library_schema.sql`).
2. Insert sample data from **Task 2** (`task2_data.sql`).
3. Run `task4_aggregate.sql` to execute the queries.
4. Observe aggregated and grouped results.

## Key Learning Points
- **GROUP BY** works after the `WHERE` clause and before the `ORDER BY` clause in SQL query execution order.
- **HAVING** is used instead of `WHERE` when filtering aggregated data.
- Aggregates like `AVG()` ignore NULL values in calculations.

