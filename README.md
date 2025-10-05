
  # ☕ Coffee Shop Sales Analytics | SQL + Power BI Dashboard  


[![View Dashboard](Dashboard%20Screenshot.png)](https://github.com/Shashankii/Coffee-Shop-Sales/blob/main/Dashboard%20Screenshot.png)


An end-to-end **data analytics project** that combines **SQL-based data exploration** with an **interactive Power BI dashboard** to analyze and visualize **Coffee Shop Sales Performance** across multiple store locations, product categories, and time periods.  

This project demonstrates complete analytics lifecycle skills — from querying raw transactional data using **SQL** to transforming it into dynamic, insight-driven visuals in **Power BI**.  

---

## 📊 Project Overview  

This project answers key business questions such as:  
- How are total sales, orders, and quantities trending month-over-month?  
- Which products and stores contribute the most to overall revenue?  
- How do weekday and weekend sales patterns differ?  
- What are the peak sales hours across all locations?  
- How can management use these insights to optimize operations and promotions?  

---

## 🧮 SQL Data Analysis  

The data foundation of this dashboard was built using **SQL**, focusing on transforming raw transactional data into analytical metrics.  

Key objectives of the SQL layer included:  
- Aggregating daily, monthly, and hourly sales trends.  
- Calculating **Month-over-Month (MoM)** growth for sales, orders, and quantity.  
- Comparing **Weekday vs Weekend** performance for better resource planning.  
- Ranking **Top-performing product categories** and **store locations**.  
- Identifying **Above/Below Average** daily performance patterns.  

The SQL scripts served as the analytical engine — preparing clean, summarized, and structured data that was later visualized in Power BI.  

📂 All SQL scripts are available in the [`sql/`](sql/) directory of this repository.  

---

## 📈 Power BI Dashboard  

The **Power BI dashboard** translates SQL-derived insights into visually rich, interactive reports.  
It enables users to explore sales patterns and performance through filters, tooltips, and trend visuals.  

### 🔹 Key Highlights  
- **Total Sales:** ~$166K in June 2023, with a **+6.23% MoM growth**  
- **Total Orders:** 35,352 with a **+5.44% increase**  
- **Quantity Sold:** 50,942 with a **+5.62% rise**  
- **Weekday vs Weekend:** Weekdays generate ~73% of total revenue  
- **Top Store:** *Hell’s Kitchen* ($56K), followed by *Astoria* and *Lower Manhattan*  
- **Category Insights:** Coffee leads sales (~$67K), followed by Tea and Bakery  
- **Peak Hours:** 10 AM – 3 PM, especially **Friday to Sunday**  

---

## 🧭 Dashboard Pages  

### **1. Sales Overview**  
- KPI Cards for **Sales, Orders, Quantity Sold**, and MoM growth  
- Sales trends with average benchmarks  
- Store and Category performance comparisons  
- Weekday vs Weekend split using donut visuals  
- Hourly sales heatmap for staffing optimization  

### **2. Tooltip – Calendar Chart**  
- Displays daily-level metrics when hovering over visuals  
- Shows Total Sales, Orders, and Avg Daily Sales for that date  

### **3. Tooltip – Day & Hour Chart**  
- Reveals hourly breakdowns for hovered days, improving context and storytelling  

> 🧠 **Impact:** These contextual tooltips enhance interactivity and allow stakeholders to explore insights seamlessly without changing pages.  

---

## 🧱 Data Model Design

### *Tables Used*

#### 🗓 Date Table
A custom Date Table built for time intelligence and trend analysis.
- *Columns:*  
  Date, Day Name, Day Number, Month, Month Number,  
  Month Year, Week Number, Weekday/Weekend, Year
- Enables calculations like *Month-over-Month Growth, **Average Daily Sales, and **Calendar Tooltips*.

#### 📦 Transactions Table
Fact table containing transactional data for analysis.
- *Columns include:*  
  CM Sales, CM Orders, CM Quantity, Color for Bars,  
  Daily Avg Sales, Foot Note, Hour,  
  MoM Growth & Diff (Sales, Orders, Quantity),  
   Labels for Categories, and a Placeholder measure for design layout.

---


#### 🎨 Visual Elements

| Visual Type           | Description                                    |
| --------------------- | ---------------------------------------------- |
| *KPI Cards*         | Show total metrics with MoM change indicators. |
| *Bar Chart (Trend)* | Sales trend with average benchmark line.       |
| *Donut Chart*       | Weekday vs Weekend contribution.               |
| *Stacked Bars*      | Category and Store-level sales comparison.     |
| *Heatmap*           | Day × Hour matrix for peak-hour detection.     |
| *Calendar Chart*    | Month-based filter linked to tooltips.         |
| *Custom Tooltips*   | Provide hover-based contextual insights.       |


-----


## ⚙️ Tools & Technologies  

| Category | Tools Used |
|-----------|-------------|
| Data Querying | **SQL Workbench** |
| Data Modeling | **Power BI Desktop** |
| Visualization | **Power BI (DAX, Tooltips, Filters)** |
| Version Control | **GitHub** |

---

## 💡 Business Impact  

Through this project, decision-makers can:  
- Track monthly growth and performance KPIs across stores.  
- Identify high-performing product categories and optimize inventory.  
- Adjust staffing based on peak-hour sales insights.  
- Leverage weekday vs weekend trends for marketing and promotions.  

---

## ▶️ How to Use  

1️⃣ **Clone or Download** this repository:  
```bash
git clone https://github.com/Shashankii/Coffee-Shop-Sales.git
```

2️⃣ **Open Power BI Dashboard:**  
- File: `CoffeeShopSales.pbix`  
- If prompted, update data source paths via *Transform Data → Data Source Settings.*  

3️⃣ **Run SQL Scripts (Optional):**  
- File: `sql/coffee_sales_analysis.sql`  
- Execute in SQL Workbench or any SQL-compatible environment to view analytical outputs.  

---

## 💼 Portfolio Highlight  

> “Designed an **end-to-end Coffee Shop Sales Analytics solution** integrating **SQL-based data analysis** and **Power BI dashboarding**.  
> Leveraged SQL for trend analysis, growth tracking, and business segmentation.  
> Built interactive Power BI visuals with custom DAX measures, dynamic tooltips, and KPI indicators to uncover actionable insights.”  

---

## 🔗 Quick Links  

- 📘 **SQL Scripts:** [`sql/coffee_sales_analysis.sql`](https://github.com/Shashankii/Coffee-Shop-Sales/blob/main/Sql%20coffee%20sales%20analysis.sql)  
- 📊 **Power BI Dashboard (Live):** [Click to View Dashboard](YOUR_POWERBI_PUBLIC_LINK_HERE)  
- 💻 **GitHub Repository:** [github.com/Shashankii/Coffee-Shop-Sales](https://github.com/Shashankii/Coffee-Shop-Sales)  

---

✨ *This project demonstrates the full analytics workflow — from raw data to strategic insights — blending SQL logic and Power BI visualization into one cohesive story.*  

