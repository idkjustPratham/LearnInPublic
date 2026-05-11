# SQL

[![SQL for Data Analytics - Learn SQL in 4 Hours](https://i.ytimg.com/vi/7mz73uXD9DA/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLDmdIwsPjydNwWgCiqhoZRbjuzf5A)](https://youtu.be/7mz73uXD9DA)

> Completed **SQL for Data Analytics** by Luke Barousse — every chapter, 26 practice problems, and a full self-designed mega project.

---

## 🏗️ Mega Project — E-Commerce Order & Customer Analytics

> 8 tables · 15 customers · 25 orders · 36 line items · PostgreSQL · VS Code

A fully normalized relational database simulating an Indian e-commerce business — designed from scratch in PostgreSQL. Dataset and problem statement were built by feeding the full course syllabus and data analyst roadmap into Claude AI, which generated the schema and 70+ problem statements. Queries were solved independently with references used for advanced sections.

**Schema:**
```
regions → customers → orders → order_items → products → categories
                             ↓
                       payments · returns
```

**15 sections — one file per section, every query commented:**

| File | Section |
|------|---------|
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

### 📊 6 Business Dashboard Queries (PS15)

| # | Query | Techniques Used |
|---|-------|-----------------|
| 1 | Customer Lifetime Value Report | JOINs, CASE, aggregation, date arithmetic |
| 2 | Product Profitability Report | GROUP BY, margin %, DENSE_RANK |
| 3 | Regional Sales Breakdown | Multi-table JOIN, CTE |
| 4 | Cohort Retention Analysis | INTERVAL, COUNT(CASE WHEN) |
| 5 | Payment Funnel | Conditional aggregation, conversion % |
| 6 | Returns Rate by Category | LEFT JOIN, COALESCE, ROUND |

### 🔑 Key SQL Patterns Used
- Multi-table joins across 4–5 tables in a single query
- CTEs chained together for multi-step aggregation
- Window functions with `PARTITION BY` for per-customer rankings and running totals
- `COUNT(CASE WHEN...)` for conditional aggregation without filtering rows
- `COALESCE` for NULL-safe calculations
- `INTERVAL` arithmetic for date-based cohort logic
- Views created and queried as reusable reporting layers

### 💡 What This Demonstrates
- Modelling a real business domain in a normalized schema (3NF)
- Writing readable, commented, production-style SQL
- Breaking down complex business questions into smaller SQL steps
- Knowing when to use subqueries vs CTEs vs window functions

---

## ✅ Topics Covered

**Foundations**
`Relational DB concepts` · `VARCHAR, TEXT, INT, FLOAT, BOOLEAN, DATE` · `DDL — CREATE, ALTER, DROP, TRUNCATE` · `DML — SELECT, INSERT, UPDATE, DELETE` · `TCL — COMMIT, ROLLBACK` · `PRIMARY KEY, FOREIGN KEY, NOT NULL, UNIQUE`

**Querying**
`WHERE, LIKE, BETWEEN, DISTINCT, wildcards` · `ORDER BY, LIMIT` · `Arithmetic, logical, comparison operators` · `UNION, UNION ALL`

**Aggregation**
`GROUP BY, HAVING` · `COUNT, SUM, AVG, MIN, MAX`

**Joins**
`INNER, LEFT, RIGHT, FULL OUTER, SELF, CROSS JOIN`

**Functions**
`Date functions` · `String functions` · `CASE expressions`

**Advanced**
`Subqueries` · `CTEs — WITH clause` · `ROW_NUMBER, RANK, DENSE_RANK, LAG, LEAD` · `Views` · `Normalization — 1NF, 2NF, 3NF`

---

## 📂 Folder Structure

```
SQL/
├── MegaProject/           # PS1–PS15 — one file per section, fully commented
├── Practice Problems/     # PP1–PP26 from the course
├── SQL Notes.docx         # rough personal notes — not polished
├── SQL Quest Log.xlsx     # chapter-by-chapter progress tracker with XP system
└── problemstatementSQL.pdf
```

---

## 🧩 Practice Problems

26 practice problems (`PP1`–`PP26`) sourced directly from the Luke Barousse course. Each file contains the problem statement as a comment followed by the solved query. One problem per file.

---

## 🛠️ Tools Used

`PostgreSQL` · `VS Code` · `Claude AI — dataset generation & debugging`

---

## 🎯 Honest Self-Assessment

| Topic | Confidence |
|-------|------------|
| Filtering, Joins, Aggregations | ✅ Solid |
| CASE, NULL Handling, Date & String Functions | ✅ Solid |
| Subqueries & CTEs | 🟡 Clicked after multiple attempts |
| Window Functions & Dashboard Queries | 🟡 Needed references — not fully independent yet |

A few questions in the later sections were left intentionally blank. Not claiming full mastery of advanced sections — that comes next.

---

## ⏭️ Next Step

Solving LeetCode-style SQL problems to build independent problem-solving ability on the advanced topics.
