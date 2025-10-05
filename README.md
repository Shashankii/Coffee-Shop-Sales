
# ☕ Coffee Shop Sales — Interactive Power BI Dashboard

[![View Dashboard](Dashboard%20Screenshot.png)](https://github.com/Shashankii/Coffee-Shop-Sales/blob/main/Dashboard%20Screenshot.png)

An interactive **Power BI dashboard** designed to analyze and visualize **Coffee Shop Sales Performance** across stores, product categories, and time periods.  
This report delivers actionable insights through advanced **DAX measures**, a **custom Date Table**, and **interactive tooltip pages** — all wrapped in a sleek, dark-themed UI for professional storytelling.

---

## 📊 Overview

The dashboard answers key business questions such as:
- How are overall sales, orders, and quantities trending month-over-month?
- Which products and stores drive the most revenue?
- How do weekdays compare with weekends?
- What time of the day experiences the highest sales volume?
- How can the store optimize staffing and promotions using hourly insights?

---

## 🚀 Key Highlights & Insights

- **Total Sales:** ~$166K in June 2023, showing a **+6.23% growth vs last month**.  
- **Total Orders:** 35,352 with a **+5.44% increase**.  
- **Quantity Sold:** 50,942 with a **+5.62% rise vs last month**.  
- **Weekday vs Weekend:** Weekdays generate ~73% of total revenue; weekends yield higher per-order values.  
- **Top Store:** *Hell’s Kitchen* ($56K) leads, followed by *Astoria* and *Lower Manhattan*.  
- **Category Insights:** Coffee dominates sales (~$67K), followed by Tea and Bakery.  
- **Daily Trend:** Most days align near the average line ($5.5K/day) with weekend spikes.  
- **Hourly Pattern:** Sales peak between **10 AM and 3 PM**, especially **Fri–Sun**.  
- **Growth Potential:** *Premium Brewed Coffee* and *Organic Coffee* show steady upward trends.

---

## 🧭 Report Pages

### **1. Sales Overview (Main Page)**
Comprehensive visual overview combining:
- KPI Cards for **Total Sales, Orders, and Quantity Sold** with MoM % growth.  
- **Sales Trend Over the Period** chart with an average sales benchmark line.  
- **Sales by Product Category** and **Store Location** bar visuals.  
- **Weekday vs Weekend split** using a donut chart.  
- **Day × Hour Heatmap** showing hourly sales distribution.  
- **Filter Panel (Month selector)** for quick time-based exploration.

### **2. Tooltip – Calendar Chart**
A **hover-based tooltip** that dynamically shows daily-level sales metrics:
- Total Sales, Orders, and Average Daily Sales.  
- Built as a dedicated tooltip page linked to the main calendar visual.

### **3. Tooltip – Day & Hour Chart**
An advanced tooltip providing **hourly breakdowns** for the hovered date — allowing users to identify sales concentration without switching pages.

> 🧠 **Why Tooltips Matter:** These context-aware hover insights make exploration seamless and improve interactivity, helping users stay focused on the story behind the data.

---

## 🧱 Data Model Design

### **Tables Used**

#### 🗓️ Date Table
A custom Date Table built for time intelligence and trend analysis.
- **Columns:**  
  `Date`, `Day Name`, `Day Number`, `Month`, `Month Number`,  
  `Month Year`, `Week Number`, `Weekday/Weekend`, `Year`
- Enables calculations like **Month-over-Month Growth**, **Average Daily Sales**, and **Calendar Tooltips**.

#### 📦 Transactions Table
Fact table containing transactional data for analysis.
- **Columns include:**  
  `CM Sales`, `CM Orders`, `CM Quantity`, `Color for Bars`,  
  `Daily Avg Sales`, `Foot Note`, `Hour`,  
  `MoM Growth & Diff (Sales, Orders, Quantity)`,  
   `Labels for Categories`, and a `Placeholder` measure for design layout.
   


#### 🎨 Visual Elements

| Visual Type           | Description                                    |
| --------------------- | ---------------------------------------------- |
| **KPI Cards**         | Show total metrics with MoM change indicators. |
| **Bar Chart (Trend)** | Sales trend with average benchmark line.       |
| **Donut Chart**       | Weekday vs Weekend contribution.               |
| **Stacked Bars**      | Category and Store-level sales comparison.     |
| **Heatmap**           | Day × Hour matrix for peak-hour detection.     |
| **Calendar Chart**    | Month-based filter linked to tooltips.         |
| **Custom Tooltips**   | Provide hover-based contextual insights.       |


#### ▶️ How to Use

1) Download or clone this repository.

git clone https://github.com/Shashankii/Coffee-Shop-Sales.git

2) Open CoffeeShopSales.pbix in Power BI Desktop (latest version).

3) If prompted, update data source paths via Transform Data → Data Source Settings.

4) Hover over visuals to explore interactive tooltips and switch months using the filter panel.

#### 💼 Portfolio Highlight

“Developed an end-to-end Power BI dashboard for Coffee Shop Sales using a custom Date Table, DAX measures, and interactive tooltip pages.
Designed KPI cards, trend analysis visuals, and an hour-by-day heatmap to help identify performance patterns and business opportunities.
Combined data modeling and visual storytelling for actionable business insights.”

  
