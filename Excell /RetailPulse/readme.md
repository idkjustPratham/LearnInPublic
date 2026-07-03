# Excel

> Completed an **end-to-end Excel Data Analytics Capstone** — 3 business domains, 9 raw datasets, 35+ tasks — plus two standalone practice workbooks (E-Commerce Sales Dashboard, HR Payroll & Employee Analysis).

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

```
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
```

### 🔑 Key Skills Demonstrated
- **Advanced formulas:** `XLOOKUP`, `TEXTSPLIT`, `FORECAST.ETS`, `SORT`, array formulas with `SUMPRODUCT` + `ISNUMBER` + `SEARCH`
- **Data modelling:** Power Query (Merge vs Append, M-level cleaning), Power Pivot, DAX measures & calculated columns
- **Statistical analysis:** Descriptive Statistics & Histogram (Analysis ToolPak), percentiles, confidence intervals
- **Business modelling:** Scenario Manager, 2-variable What-If Data Tables
- **Visualization:** line charts with trendlines, combo charts (actual + forecast + confidence band), dynamic bar charts, conditional-formatting heatmaps

---

## 📊 Additional Workbooks

| File | Description |
|---|---|
| `E-Commerce sales dashboard.xlsx` | *[Add a 1–2 line description of scope/techniques]* |
| `HR Payroll & Employee Analysis.xlsx` | *[Add a 1–2 line description of scope/techniques]* |

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
