#  Supply Chain Risk Analysis

##  Project Overview
End-to-end business analytics project analyzing **180,519 orders** from a global 
supply chain dataset (2015–2018) to identify delivery risk patterns, build a custom 
Supplier Risk Score, and forecast future delay rates.

**Key Finding:** First Class shipping has a 95.3% late delivery rate despite being 
the premium option — and Second Class carries the highest overall risk score (229) 
when factoring in both frequency and duration of delays.

---

##  Tools & Technologies
| Tool | Purpose |
|------|---------|
| MySQL | Database querying and risk score calculation |
| Python (Pandas) | Data cleaning and exploration |
| Python (Matplotlib, Seaborn) | Data visualization |
| Python (SciPy, NumPy) | Linear regression forecasting |
| Python (Plotly) | Interactive dashboard |
| Power BI | Business intelligence dashboard |
| Excel | Initial data exploration and PivotTables |

---

##  Key Findings

### Finding 1 — Scale of the Problem
- **54.8%** of all orders arrived late (98,977 out of 180,519)
- Only 17.8% shipped on time

### Finding 2 — The Shipping Mode Paradox
| Shipping Mode | Late Rate | Risk Score |
|------------- |---------- |------------|
| First Class  | 95.3% 🔴  | 190.64 |
| Second Class | 76.6% 🔴  | **229.20** |
| Same Day     | 45.7% 🟡  | 67.62 |
| Standard Class | 38.1% 🟢 | 37.92 |

### Finding 3 — Internal Operational Failure
All 5 global markets show identical delay rates (54–55%), proving the problem 
is internal — not regional or seasonal.

### Finding 4 — High Risk Categories
- Golf Bags & Carts: **68.9%** late
- Lacrosse: **60.1%** late  
- Pet Supplies: **58.9%** late

### Finding 5 — Worsening Trend
Late delivery rate increased from 54.9% (2015) to 56.3% (2018). 
Linear regression forecast predicts continued increase through mid-2018.

---

##  Project Structure
supply-chain-risk-analysis/
│
├── Supply_Chain_Analysis.ipynb   # Python notebook (cleaning, EDA, forecast)
├── supply_chain_queries.sql      # All SQL queries with comments
├── supply_chain_dashboard.html   # Interactive Plotly dashboard
├── supply_chain_clean.csv        # Cleaned dataset
├── charts/                       # All 7 generated chart images
└── Supply_Chain_Analytics_Guidebook.docx  # Complete beginner guide
---

##  Dashboard Preview
> Interactive Plotly dashboard includes KPI cards, heatmap, trend line, 
> donut chart, and 6-month forecast. Open supply_chain_dashboard.html 
> in any browser.

---

##  Business Recommendations
1. **Audit First Class fulfillment** — 95.3% late rate is unacceptable 
   for a premium product
2. **Investigate Second Class operations** — highest overall risk score (229)
3. **Focus on internal processes** — regional factors can be ruled out
4. **Special handling for Golf/Outdoor categories** — consistently 
   highest delay rates

---

## 🔧 How to Run This Project

### Prerequisites
```bash
pip install pandas matplotlib seaborn plotly scipy sqlalchemy pymysql
```

### Run the Analysis
1. Clone this repository
2. Open `Supply_Chain_Analysis.ipynb` in Jupyter Notebook
3. Run all cells in order
4. Open `supply_chain_dashboard.html` in a browser for the interactive dashboard

---

##  Dataset
- **Source:** DataCo Supply Chain Dataset (Kaggle)
- **Size:** 180,519 orders, 53 columns
- **Period:** January 2015 – January 2018
- **Markets:** Europe, Pacific Asia, USCA, Africa, LATAM

---

## 👤 Author
**Sai Nischala**  
[GitHub](https://github.com/sai-nischala) | [LinkedIn](www.linkedin.com/in/sainischalak)

---
*Built as a portfolio project to demonstrate end-to-end data analytics skills 
using real-world supply chain data.*
