# Excel Data Analytics Capstone Project
### RetailPulse Pvt. Ltd. — End-to-End Business Intelligence in Excel

---

## Project Overview

RetailPulse Pvt. Ltd. is a mid-sized Indian retail chain with 5 stores across major cities. The company also runs a centralized customer support call centre and an active HR team that tracks the data analytics job market to benchmark salaries and plan hiring.

You have been brought in as a **Data Analyst** with one mandate: build a complete, production-ready Excel analytics system from raw data — no BI tools, no Python, no dashboards outside Excel. Everything must live in one workbook.

This project covers **three interconnected business domains** using **9 datasets** and **35+ Excel tasks** spanning every major skill area tested in data analyst interviews and roles.

---

## Datasets (9 CSV files — import all into Excel as separate sheets)

| File | Sheet Name | Rows | Description |
|------|-----------|------|-------------|
| `CallLog.csv` | CallLog | 500 | Every customer support call over 4 weeks |
| `Agents.csv` | Agents | 15 | Agent profiles, shifts, pay rates |
| `Sales.csv` | Sales | 1,000 | 6 months of retail transactions across 5 stores |
| `Products.csv` | Products | 40 | Product catalogue with cost price and reorder level |
| `Stores.csv` | Stores | 5 | Store metadata — city, region, manager |
| `Inventory.csv` | Inventory | 200 | Current stock per product per store |
| `JobListings.csv` | JobListings | 150 | Scraped data analyst job postings |
| `SkillsList.csv` | SkillsList | 20 | Reference list of 20 skills to track |
| `StaffingScenarios.csv` | StaffingScenarios | 5 | Inputs for call centre staffing what-if models |

---

## Domain A — Call Centre Operations

**Context:** The call centre manager needs a performance dashboard covering agents, shift efficiency, and customer experience. She also wants to model what happens to cost if headcount changes.

### Tasks

**A1. Time Arithmetic & Formatting**
- Calculate `CallDuration_sec` = EndTime − StartTime (in seconds)
- Create `CallDuration_MMSS` using `TEXT` and `TIME` functions to display as MM:SS
- Convert `WaitTime_sec` to a readable MM:SS column the same way

**A2. DateTime Decomposition**
- Extract `CallHour`, `DayOfWeek` (Mon–Sun text), `WeekNumber`, and `MonthName` from `StartTime` using `HOUR`, `TEXT`, `WEEKNUM`, `WEEKDAY`

**A3. Peak Hour Analysis**
- On a separate summary sheet, use `COUNTIF` / `COUNTIFS` by hour (0–23) to build a call volume by hour table
- Identify the top 3 peak hours and the quietest 3 hours

**A4. Shift & Call Type Breakdown**
- Use `AVERAGEIFS` to calculate:
  - Avg WaitTime per Shift (Morning / Afternoon / Night)
  - Avg CustomerRating per Shift
  - Resolution Rate per Shift (resolved calls / total calls — use COUNTIFS)
  - Avg WaitTime per CallType
  - Resolution Rate per CallType
- Use `AVERAGEIFS` again to calculate avg WaitTime per Channel (Phone / Chat / Email)

**A5. Agent-Level Performance**
- For each of the 15 agents, calculate using `COUNTIFS` and `AVERAGEIFS`:
  - Total Calls Handled
  - Avg Call Duration (seconds)
  - Avg Customer Rating
  - Resolution Rate %
  - Escalation Rate % (EscalatedToManager = Y)

**A6. Weighted Performance Score & Ranking**
- Build a Performance Score per agent:
  `Score = (Resolution Rate × 0.40) + (Avg Rating / 5 × 0.35) + (Normalized Call Volume × 0.25)`
- Use `RANK` with mixed cell references (`$`) to rank all 15 agents
- Use `INDEX/MATCH` to return the #1 and #5 ranked agent names dynamically

**A7. Descriptive Statistics on Wait Time**
- Run **Analysis ToolPak → Descriptive Statistics** on `WaitTime_sec`
- Capture: Mean, Median, Std Dev, Min, Max, Kurtosis, Skewness
- Separately compute a percentile table: 25th, 50th, 75th, 90th, 95th using `PERCENTILE`

**A8. Call Volume Chart**
- Create a **Line Chart** of call volume by hour of day (from Task A3 table)
- Add a **polynomial trendline** with the equation displayed on chart
- Format: title, axis labels, gridlines

**A9. Staffing Cost Scenario Manager**
- Build a cost model: `Total Hourly Cost = Number of Agents × Avg HourlyRate × AgentCountMultiplier`
- Use the `StaffingScenarios` sheet as inputs
- Set up **Excel Scenario Manager** with 5 named scenarios (one per row in StaffingScenarios)
- Generate a Scenario Summary report showing total estimated daily cost under each scenario

**A10. Conditional Formatting — Agent Flags**
- On the agent performance table: red fill if Resolution Rate < 70%
- Yellow fill if Avg Customer Rating < 3.0
- Green fill for the top 3 ranked agents (use RANK result as criteria)

---

## Domain B — Retail Sales & Inventory

**Context:** The retail head wants a full financial model: revenue, margins, inventory health, and forecasting. This data must be modelled relationally using Power Query and Power Pivot.

### Tasks

**B1. Power Query — Load & Clean**
- Load all 4 retail sheets (Sales, Products, Stores, Inventory) via Power Query
- Clean data types: Date columns as Date, numeric columns as Decimal/Whole, IDs as Text
- Rename columns to remove spaces if any; trim whitespace from text fields

**B2. Power Query — Merge & Append**
- **Merge** Sales with Products (on ProductID) to bring in CostPrice, Category, Supplier
- **Merge** result with Stores (on StoreID) to bring in Region, City, StoreName
- Output: a single flat `FactSales` table with all columns needed for analysis
- Separately, split the 6 months of sales into two fictional half-year sheets and practice **Append** to recombine them — note the difference between Append vs Merge in a comment cell

**B3. Power Pivot — Data Model**
- Load all cleaned tables into the **Power Pivot Data Model**
- Define relationships:
  - Sales → Products on ProductID
  - Sales → Stores on StoreID
  - Inventory → Products on ProductID
  - Inventory → Stores on StoreID

**B4. DAX Measures**
Write the following DAX measures in Power Pivot:
- `Total Revenue` = SUM of (Qty × SalePrice)
- `Total Cost` = SUM of (Qty × CostPrice)
- `Gross Profit` = Total Revenue − Total Cost
- `Gross Margin %` = Gross Profit / Total Revenue
- `Units Sold` = SUM of Qty
- `Avg Sale Price` = Total Revenue / Units Sold
- `Inventory Turnover Rate` = Units Sold / AVG StockOnHand
- `Units Sold MTD` = CALCULATE(Units Sold, DATESMTD)

**B5. DAX Calculated Column**
- In the Inventory table, add a calculated column:
  `ReorderStatus = IF(StockOnHand < ReorderLevel, "Reorder Now", "Sufficient")`
- In the Sales table, add:
  `EffectiveSalePrice = SalePrice × (1 - DiscountPct/100)`
  `RevenueAfterDiscount = EffectiveSalePrice × Qty`

**B6. Pivot Table from Power Pivot**
- Build a Pivot Table connected to the Power Pivot model
- Rows: Category → StoreName; Columns: Month; Values: Gross Margin %
- Add a slicer on Region
- Add a slicer on ExperienceLevel (if connected) — here, add one on Category
- Enable drill-down so clicking a category shows individual products

**B7. Pricing Scenario Manager**
- Build a what-if assumption block with two input cells: `CostIncrease%` and `PriceDiscount%`
- Show resulting Gross Margin % using a formula referencing those cells
- Create 3 named scenarios in **Scenario Manager**: Base, Cost Pressure (cost +10%), Price War (price −8%)

**B8. Two-Variable Data Table**
- Build a **2-variable What-If Data Table**:
  - Row input: CostPrice increase % (0%, 5%, 10%, 15%)
  - Column input: SalePrice discount % (0%, 3%, 6%, 9%, 12%)
  - Output: Gross Margin % at each combination
- Apply a green-yellow-red color scale via conditional formatting

**B9. Revenue Forecasting**
- Aggregate actual monthly revenue (Jan–Jun 2024) into a 6-row summary table
- Use `FORECAST.ETS` to project July and August 2024
- Use `FORECAST.ETS.CONFINT` to add upper/lower confidence bounds
- Build a combo chart: actual as columns, forecast as line, confidence interval as area band

---

## Domain C — Job Market Intelligence

**Context:** The HR team scraped 150 job listings for Data Analyst roles. They need to understand which skills are in demand, what salaries look like by experience and city, and what skill combinations appear together most.

### Tasks

**C1. Text Splitting**
- Use `TEXTSPLIT` to split the Skills column (comma-separated) into Skill1, Skill2, … Skill8
- Handle rows with fewer than 8 skills — `TEXTSPLIT` will return errors for missing slots; wrap in `IFERROR` to return blank

**C2. Skill Frequency Counter**
- For each of the 20 skills in SkillsList, use `COUNTIF` across all Skill1–Skill8 columns to count how many job listings mention it
- Sort results using `LARGE` dynamically to get a ranked top-10 skills table

**C3. Salary Analysis**
- Calculate `MidSalary = (SalaryMin + SalaryMax) / 2` for every listing
- Use `AVERAGEIF` to get avg MidSalary per ExperienceLevel (Entry / Mid / Senior)
- Use `AVERAGEIFS` to get avg MidSalary per ExperienceLevel × City combination (matrix table)

**C4. VLOOKUP vs XLOOKUP Practice**
- Build a small reference table: Skill → AvgSalaryOfListingsMentioningIt (compute manually for 5 skills)
- Use `VLOOKUP` to pull the benchmark salary for each skill — deliberately use approximate match and observe the issue
- Redo using `XLOOKUP` — note the differences in a comment: error handling, direction, default value

**C5. Top & Bottom Paying Roles**
- Use `LARGE` to find the top 5 MidSalary values
- Use `SMALL` to find the bottom 5 MidSalary values
- Use `INDEX/MATCH` to return the Company name and JobTitle for each

**C6. Multi-Condition Skill Flag (Array Formula)**
- Add a column `SQL_AND_Python`: return "Yes" if the listing contains BOTH "SQL" AND "Python" anywhere in Skill1–Skill8
- Build this as a single array formula using `SUMPRODUCT` + `ISNUMBER` + `SEARCH`
- Extend: add `Python_OR_R` flag using the same approach

**C7. Skill Frequency Bar Chart**
- Create a bar chart of top 10 skills by frequency (from Task C2)
- Sort the source data dynamically using `SORT` function so chart updates automatically
- Add data labels; format with distinct color for top 3 skills

**C8. Pivot Table — Salary by Experience × Location**
- Build a Pivot Table: Rows = ExperienceLevel, Columns = Location, Values = Avg MidSalary
- Add a slicer on ExperienceLevel
- Add a slicer on RemoteOption (Yes / No / Hybrid)



## Deliverable Structure (your Excel workbook should have these sheets)

```
📁 RetailPulse_Analytics.xlsx
│
├── 📄 README              ← Project summary, your name, dataset sources
│
├── ── RAW DATA ──
├── 📄 CallLog             ← Imported CSV
├── 📄 Agents              ← Imported CSV
├── 📄 Sales               ← Imported CSV
├── 📄 Products            ← Imported CSV
├── 📄 Stores              ← Imported CSV
├── 📄 Inventory           ← Imported CSV
├── 📄 JobListings         ← Imported CSV
├── 📄 SkillsList          ← Imported CSV
├── 📄 StaffingScenarios   ← Imported CSV
│
├── ── ANALYSIS ──
├── 📄 A_CallCentre        ← Domain A tasks + agent performance table
├── 📄 B_Retail            ← Domain B tasks + FactSales merged table
├── 📄 C_JobMarket         ← Domain C tasks + skill frequency table
│
├── ── MODELS & OUTPUTS ──
├── 📄 Scenarios           ← Staffing scenarios + pricing scenarios
├── 📄 DataTables          ← 2-variable margin table
├── 📄 Forecast            ← ETS forecast with chart
├── 📄 StatSummary         ← Descriptive stats from Analysis ToolPak
│
└── 📄 Dashboard           ← Executive KPI summary (Bonus X2)
```

---

## GitHub README Talking Points

When you write your repo README, frame it like this:

> **RetailPulse Excel Analytics** — A comprehensive Excel-based business intelligence project simulating real-world data analysis across three domains: customer support operations, retail sales & inventory management, and HR/job market intelligence. Built entirely in Microsoft Excel using advanced formulas, Power Query, Power Pivot, DAX, and statistical tools.

**Skills demonstrated (list these in your README and resume bullet):**

- Advanced Excel: `XLOOKUP`, `FILTER`, `TEXTSPLIT`, `FORECAST.ETS`, `LAMBDA`, `LET`, `SORT`, array formulas with `SUMPRODUCT`
- Data Modelling: Power Query (Merge, Append, M language), Power Pivot, DAX measures and calculated columns
- Statistical Analysis: Descriptive Statistics, Histogram (Analysis ToolPak), Percentiles, Confidence Intervals
- Business Modelling: Scenario Manager, 2-Variable Data Tables, What-If Analysis
- Visualization: Line charts with trendlines, Combo charts, Dynamic bar charts, Conditional formatting heatmaps
- Data Cleaning: DateTime decomposition, Text splitting, Type casting, Error handling with `IFERROR`

---

## Dataset Summary

| Dataset | Key Columns Added vs Original Scenario |
|---------|---------------------------------------|
| CallLog | + Department, Channel, EscalatedToManager |
| Agents | + EmploymentType, City |
| Sales | + DiscountPct, PaymentMethod |
| Products | + Supplier |
| Stores | + YearOpened |
| Inventory | + ReorderTriggered (pre-flagged) |
| JobListings | + JobTitle, Industry, RemoteOption |
| SkillsList | + SkillCategory |
| StaffingScenarios | New table — 5 staffing what-if scenarios |
