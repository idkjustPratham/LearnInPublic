# SQL
## Course
[![SQL for Data Analytics - Learn SQL in 4 Hours](https://i.ytimg.com/vi/7mz73uXD9DA/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLDmdIwsPjydNwWgCiqhoZRbjuzf5A)](https://youtu.be/7mz73uXD9DA)


**SQL for Data Analytics** by Luke Barousse — followed every chapter end to end.
---
## What's in this folder
| File/Folder | Description |
|---|---|
| `MegaProject/` | End-to-end SQL project on an e-commerce database |
| `Practice Problems/` | 26 practice problems from the course |
| `SQL Notes.docx` | Personal rough notes — not polished, for my own reference |
| `SQL Quest Log.xlsx` | Chapter-by-chapter progress tracker with XP system |
| `problemstatementSQL.pdf` | Full mega project problem statement |
---
## Topics Covered
**Foundations**
- Relational databases and RDBMS concepts
- SQL data types — VARCHAR, TEXT, INT, FLOAT, BOOLEAN, DATE
- DDL — CREATE, ALTER, DROP, TRUNCATE
- DML — SELECT, INSERT, UPDATE, DELETE
- TCL — COMMIT, ROLLBACK
- Integrity constraints — PRIMARY KEY, FOREIGN KEY, NOT NULL, UNIQUE

**Querying**
- Filtering — WHERE, LIKE, BETWEEN, DISTINCT, wildcards
- Sorting & limiting — ORDER BY, LIMIT
- Operators — arithmetic, logical, comparison
- UNION and UNION ALL

**Aggregation**
- GROUP BY, HAVING
- Aggregate functions — COUNT, SUM, AVG, MIN, MAX

**Joins**
- INNER, LEFT, RIGHT, FULL OUTER, SELF, CROSS JOIN

**Functions**
- Date functions
- String functions
- CASE expressions

**Advanced**
- Subqueries
- CTEs — WITH clause
- Window functions — ROW_NUMBER, RANK, DENSE_RANK, LAG, LEAD
- Views
- Normalization — 1NF, 2NF, 3NF
---
## Mega Project
**Domain:** E-Commerce Order & Customer Analytics
**Database:** PostgreSQL | **Tool:** VS Code

The dataset was designed by feeding all course topics plus the data analyst roadmap into Claude AI, which generated a fully normalized 8-table e-commerce schema. The problem statement covers 70+ queries across 15 sections, structured to cover every topic from the course and roadmap.

**Schema:**
```
regions → customers → orders → order_items → products → categories
                   ↓
              payments, returns
```

**Sections:**
| File | Section |
|---|---|
| PS1 | Database Setup & Basics |
| PS2 | Filtering & Pattern Matching |
| PS3 | Operators & Sorting |
| PS4 | Aggregation & Grouping |
| PS5 | NULL Handling |
| PS6 | Joins |
| PS7 | Date Functions |
| PS8 | String Functions |
| PS9 | CASE Expressions |
| PS10 | Subqueries & CTEs |
| PS11 | Window Functions |
| PS12 | Views |
| PS13 | UNION & UNION ALL |
| PS14 | Normalization |
| PS15 | Dashboard Queries |

Each file has one query per problem statement. Every query is commented with the problem it solves before the solution.

---

## Mega Project — Deliverables

### What was built
A fully normalized relational database simulating an Indian e-commerce business — 8 tables, 15 customers, 25 orders, 36 order line items, and associated payments and returns data. Designed from scratch in PostgreSQL.

### Queries solved
70+ queries covering every major SQL concept. The final section (PS15) contains 6 production-style business dashboard queries:

- **Customer Lifetime Value Report** — total spend, order count, avg order value, first and last order date, membership tier per customer
- **Product Profitability Report** — units sold, revenue, cost, profit, and margin % per product ranked by profit
- **Regional Sales Breakdown** — total orders and revenue broken down by region
- **Cohort-style Retention** — customers grouped by signup year showing first year orders vs overall orders
- **Payment Funnel** — total orders → successful → failed → refunded with conversion % at each stage
- **Returns Analysis** — return rate by category to identify which category has the highest return rate

### Key SQL patterns used in the project
- Multi-table joins across 4-5 tables in a single query
- CTEs chained together for multi-step aggregation
- Window functions with PARTITION BY for per-customer rankings and running totals
- COUNT(CASE WHEN...) for conditional aggregation without filtering
- COALESCE for NULL-safe calculations
- INTERVAL arithmetic for date-based cohort logic
- Views created and queried as reusable reporting layers

### What this demonstrates
- Ability to model a real business domain in a normalized schema (3NF)
- Writing readable, commented, production-style SQL
- Breaking down a complex business question into smaller SQL steps
- Understanding of when to use subqueries vs CTEs vs window functions

---

## Practice Problems
26 practice problems (`PP1` through `PP26`) sourced directly from the Luke Barousse course. Each file contains the problem statement as a comment followed by the solved query.

---

## Honest Self-Assessment
Comfortable with everything up to CASE expressions. Subqueries and CTEs needed repeated attempts before clicking. Window functions and the final dashboard queries were the hardest — solved most with significant help from the internet and Claude AI towards the end. A few questions in the later sections were left intentionally blank as I had no idea where to start.

Not claiming full independent mastery of the advanced sections — that comes next with deliberate practice.

---

## Tools Used
- PostgreSQL
- VS Code
- Claude AI — for dataset generation and debugging

---

## Next Step
Solving LeetCode-style SQL problems to build independent problem solving ability on the advanced topics.
