[![Excel for Data Analytics - Full Course for Beginners](https://i.ytimg.com/vi/pCJ15nGFgVg/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIGBACGAY4AUAB&rs=AOn4CLD10RA7t1xHduvEten7wkjP8el8NA)](https://www.youtube.com/watch?v=pCJ15nGFgVg&t=32816s)

# Excel

> Completed an **end-to-end Excel Data Analytics Capstone** — 3 business domains, 9 raw datasets, 35+ tasks — plus two standalone practice workbooks (HR Payroll & Employee Analysis, E-Commerce Sales Dashboard).

---

## 🏗️ Capstone Project — RetailPulse Pvt. Ltd.

> 3 domains · 9 datasets · 35+ tasks · Power Query · Power Pivot · DAX · Analysis ToolPak

A simulated mid-sized Indian retail chain (5 stores) with a call centre and an HR team benchmarking the job market. Built as a single production-style Excel workbook — no BI tools, no Python, everything native to Excel. Full task list and problem statement generated with Claude AI, solved independently in Excel.

**Three domains covered:**

| Domain | Focus | Key Techniques |
|---|---|---|
| **A — Call Centre Operations** | Agent performance, shift efficiency, staffing cost scenarios | `COUNTIFS`, `AVERAGEIFS`, `RANK`, `INDEX/MATCH`, Analysis ToolPak Descriptive Stats, Scenario Manager, conditional formatting |
| **B — Retail Sales & Inventory** | Revenue/margin modelling, inventory health, forecasting | Power Query (Merge, Append), Power Pivot data model, DAX measures & calculated columns, 2-variable Data Tables, `FORECAST.ETS` |
| **C — Job Market Intelligence** | Skill demand, salary benchmarking, skill co-occurrence | `TEXTSPLIT`, `SUMPRODUCT` array formulas, `XLOOKUP` vs `VLOOKUP`, dynamic `SORT`, Pivot Tables with slicers |

Full task-by-task breakdown (A1–A10, B1–B9, C1–C8) is in [`PROJECT_STATEMENT.md`](./PROJECT_STATEMENT.md).

### 📂 Folder Structure
Excell/
└── RetailPulse/
├── PROJECT_STATEMENT.md              # Full task brief for all 3 domains
│
├── ── RAW DATA ──
├── Agents.csv
├── CallLog.csv
├── Inventory.csv
├── JobListings.csv
├── Products.csv
├── Sales.csv
├── SkillsList.csv
├── StaffingScenarios.csv
├── Stores.csv
│
├── ── DOMAIN WORKBOOKS ──
├── A — Call Centre Operations.xlsx
├── B — Retail Sales & Inventory.xlsx
├── B.1.xlsx                          # Power Query / Power Pivot data model build-out
├── C — Job Market Intelligence.xlsx
│
└── Retail Pulse.xlsx                 # Consolidated workbook — all domains + dashboard

### 🔑 Key Skills Demonstrated
- **Advanced formulas:** `XLOOKUP`, `TEXTSPLIT`, `FORECAST.ETS`, `SORT`, array formulas with `SUMPRODUCT` + `ISNUMBER` + `SEARCH`
- **Data modelling:** Power Query (Merge vs Append, M-level cleaning), Power Pivot, DAX measures & calculated columns
- **Statistical analysis:** Descriptive Statistics & Histogram (Analysis ToolPak), percentiles, confidence intervals
- **Business modelling:** Scenario Manager, 2-variable What-If Data Tables
- **Visualization:** line charts with trendlines, combo charts (actual + forecast + confidence band), dynamic bar charts, conditional-formatting heatmaps

---

## 📊 Additional Workbooks

### `HR Payroll & Employee Analysis.xlsx`

**Scenario:** Junior data analyst at a 50-person company. HR hands over a raw employee export and needs a clean, automated payroll summary report.

**Dataset:**
- `Employees` — EmpID, Name, Department, Role, JoinDate, Salary, HoursWorked (weekly avg), Rating (1–5), Region — 50 rows across 5 departments, 3 regions
- `TaxBrackets` — MinSalary, MaxSalary, TaxRate%

**Tasks:**
- `XLOOKUP` to pull each employee's tax rate from `TaxBrackets` and calculate net salary
- `Tenure` column via date functions (years since JoinDate)
- Performance flag ("High Performer" / "Needs Review" / "Standard") using `IFS` on Rating + Tenure
- Department Summary table via `COUNTIFS` / `AVERAGEIFS` / `SUMIFS` — headcount, avg salary, avg rating per dept
- In-department salary ranking with `RANK` and absolute references
- Conditional formatting: red for Rating < 2, green for Rating ≥ 4, salary heatmap
- Pivot Table: avg salary by Department × Region, with a Region slicer
- Bar chart of avg salary by department + sparklines for salary distribution per dept
- What-If Data Table: total payroll cost at 0%, 5%, 10%, 15% salary raises

### `E-Commerce sales dashboard.xlsx`

**Scenario:** Monthly raw order export from an online store's order management system. Clean it, analyze it, build a live-ish manager dashboard.

**Dataset:**
- `RawOrders` — OrderID (`"ORD-2024-00123"`), CustomerName (mixed case, extra spaces), ProductCode, Category, OrderDate (some as text `"15-Jan-2024"`), Qty, UnitPrice, DiscountCode, ShipDate — 200 rows, 8 product categories, deliberate data quality issues
- `Discounts` — DiscountCode, DiscountPct

**Tasks:**
- `TRIM`, `PROPER`, `TEXTSPLIT`, `MID`, `FIND` to clean CustomerName and extract the numeric order number from OrderID
- `DATEVALUE` to convert text-format dates to real dates; extract Month, Weekday, Hour-of-day
- `XLOOKUP` for discount %, then `FinalRevenue = Qty × UnitPrice × (1 − Discount%)`
- Array formula for total revenue per category without a pivot table
- `TEXTJOIN` to build a "Customer Order Summary" string ("CustomerName ordered X items across Y categories")
- `COUNTIF` by hour to find peak order hours, charted as a line chart
- Pivot Table + Pivot Chart: Revenue by Category by Month, with a timeline slicer
- Power Query to load RawOrders, clean the date column, remove duplicates, merge with `Discounts`
- `FORECAST.ETS` to project next 3 months of revenue from historical monthly totals

---

## 🎯 Honest Self-Assessment

| Area | Confidence |
|---|---|
| Formula-based analysis (COUNTIFS/AVERAGEIFS, INDEX/MATCH, ranking) | ✅ Solid |
| Power Query (Merge/Append, cleaning) | ✅ Solid |
| Power Pivot & DAX (measures, calculated columns) | 🟡 Comfortable with core patterns, still building speed |
| Forecasting (`FORECAST.ETS`) & Scenario/Data Table modelling | 🟡 Functional, not yet fully independent on edge cases |

---

## 🛠️ Tools Used

`Microsoft Excel` · `Power Query` · `Power Pivot` · `DAX` · `Analysis ToolPak` · `Claude AI — dataset & problem-statement generation`

---
## 📁 Full Course Files

All files for this course: [Google Drive folder](https://drive.google.com/drive/folders/1wMg0yI0LjB6GVWQj41hK4LfLUn0eh0yB?usp=sharing)
