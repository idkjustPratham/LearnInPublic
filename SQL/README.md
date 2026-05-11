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
