# 🛒 Blinkit Retail Data Analysis  

<img width="1500" height="1500" alt="blinkit-seeklogo" src="https://github.com/user-attachments/assets/60113c71-043d-40d3-8b0b-712b02b9667f" />

**SQL Query Project**

This project analyzes **Blinkit retail sales data** using SQL, uncovering key insights on **sales performance, outlet behavior, and product categories**.  
The queries address **data cleaning, KPIs, and advanced granular analysis**, helping to identify **top product lines, outlet trends, and sales distribution**.

---

## 📌 Table of Contents

* <a href="#overview">Overview</a>
* <a href="#business-problem">Business Problem</a>
* <a href="#dataset">Dataset</a>
* <a href="#tools--technologies">Tools & Technologies</a>
* <a href="#project-structure">Project Structure</a>
* <a href="#data-cleaning--preparation">Data Cleaning & Preparation</a>
* <a href="#exploratory-data-analysis-eda">Exploratory Data Analysis (EDA)</a>
* <a href="#research-questions--key-findings">Research Questions & Key Findings</a>
* <a href="#sql-query-book">SQL Query Book</a>
* <a href="#how-to-run-this-project">How to Run This Project</a>
* <a href="#final-recommendations">Final Recommendations</a>
* <a href="#author--contact">Author & Contact</a>

---

## Overview
This project analyzes **Blinkit grocery sales data** with SQL queries to explore:  
- ✅ Impact of **item fat content** on sales  
- ✅ Performance of **different item types**  
- ✅ **Outlet-level sales** patterns (location, establishment year, size)  
- ✅ Percentage contribution of sales by **categories and outlets**  

---

## Business Problem
Retail businesses must understand **product performance, customer choices, and outlet efficiency** to improve profitability.  

This project answers:  
- Which **item categories** sell the most/least?  
- How does **fat content** affect sales?  
- Which **outlets contribute most** to revenue?  
- What is the **percentage share** of outlet sizes in sales?  

---

## Dataset
- **Source**: Blinkit Retail Dataset  
- **Attributes**:  
  `Item_Identifier, Item_Weight, Item_Fat_Content, Item_Type, Outlet_Identifier, Outlet_Size, Outlet_Location_Type, Outlet_Establishment_Year, Sales, Rating`  
- **Size**: ~8,500 records  

---

## Tools & Technologies
- **SQL Server / MySQL** → Query execution  
- **GitHub** → Version control & documentation  
- **Excel / CSV** → Raw dataset storage  

---

## Project Structure

```

blinkit-sql-analysis/
│
├── README.md
├── .gitignore
├── data/ # Retail dataset
│ └── blinkit_data.csv
│
├── queries/ # SQL query book
│ └── blinkit_analysis_queries.sql
│
├── outputs/ # Query results / screenshots
│ └── sales_analysis.png


```

---

## Data Cleaning & Preparation
- ✅ Standardized `Item_Fat_Content` values (`Low Fat`, `Regular`)  
- ✅ Checked for **nulls & duplicates**  
- ✅ Converted sales values into **millions (2 decimals)**  
- ✅ Ensured correct **data types** for numeric and categorical fields  

---

## Exploratory Data Analysis (EDA)
The queries focus on:  
- **Sales distribution** by item type, fat content, and outlet  
- **KPI metrics** like total sales, average sales, average rating  
- **Pivot-based analysis** for outlet performance  
- **Sales percentage contribution** by outlet size  

---

## Research Questions & Key Findings
1. **What is the impact of fat content on sales?**  
   → Regular items generate higher sales than Low Fat.  

2. **Which item types sell the most?**  
   → Top 5 include Snacks, Fruits & Vegetables, Household, Frozen Foods, Dairy.  

3. **Which item types sell the least?**  
   → Fast Foods, Starchy Foods, Seafood rank lowest.  

4. **How do outlets perform by establishment year?**  
   → Older outlets (established earlier) show consistent higher sales.  

5. **What is the sales contribution by outlet size?**  
   → Large outlets dominate with ~45% contribution.  

6. **Which outlet locations perform best?**  
   → Tier 3 cities lead in total sales compared to Tier 1 and Tier 2.  

---

## SQL Query Book
All queries are stored in [`blinkit_analysis_queries.sql`]([queries/blinkit_analysis_queries.sql](https://github.com/tarunburla/Blinkit_data_analysis_SQL/blob/main/blinkit_analysis_solutions.sql)). 

They include:
- Data cleaning queries  
- KPI calculations (Total, Average Sales)  
- Granular analysis (Top/Least sales, Outlet comparisons)  
- Pivot tables for outlet-level breakdown  

---

## How to Run This Project
1. Import `blinkit_data.csv` into your SQL database.  
2. Run the queries in `blinkit_analysis_queries.sql`.  
3. Export results as tables or charts.  
4. Document insights with screenshots into the `outputs/` folder.  

---

## Final Recommendations
- Expand **Regular Fat product line** (higher sales contribution).  
- Boost **underperforming item types** with promotions.  
- Invest more in **large outlets** (highest revenue share).  
- Strengthen presence in **Tier 3 cities** (leading sales).  

---

## Author & Contact
**Tarun Burla**  
*Data Analyst | Business Intelligence*  
📧 Email: [tarunburla1234@gmail.com]  
🔗 LinkedIn | 🔗 Portfolio  
