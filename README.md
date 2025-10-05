

# ☕ Coffee Shop Sales — Power BI Dashboard

[![View Dashboard](Dashboard%20Screenshot.png)](https://github.com/Shashankii/Coffee-Shop-Sales/blob/main/Dashboard%20Screenshot.png)


An interactive **Power BI dashboard** designed to analyze and visualize the **Coffee Shop Sales Performance** across stores, product categories, and time periods.  
This report delivers actionable insights through advanced **DAX measures**, a **custom Date Table**, and **interactive tooltip pages** — all wrapped in a polished dark-themed UI for a professional storytelling experience.

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
Comprehensive view combining:
- KPI Cards for **Total Sales, Orders, and Quantity Sold** with MoM % growth.
- **Sales Trend Over the Period** chart with average reference line.
- **Sales by Product Category** and **Store Location**.
- **Weekday vs Weekend split**.
- **Day × Hour Heatmap** for demand visualization.
- **Filter Panel (Month selector)** for easy time-based exploration.

### **2. Tooltip – Calendar Chart**
A **hover-based tooltip** that dynamically shows daily-level sales insights such as:
- Total Sales, Orders, and Avg. Daily Sales.  
- Built using a separate tooltip page and linked to the main calendar visual.

### **3. Tooltip – Day & Hour Chart**
An advanced tooltip providing **hourly breakdowns** for the hovered date — showing sales concentration, allowing users to spot hourly trends without switching pages.

> 🧠 **Why Tooltips Matter:** These context-aware hover insights make exploration seamless and help users interact with data more intuitively.

---

## 🧱 Data Model Design

### **Tables Used**

#### 🗓️ Date Table
A custom Date Table used for time intelligence functions:
- Columns:  
  - `Date`, `Day Name`, `Day Number`, `Month`, `Month Number`,  
  - `Month Year`, `Week Number`, `Weekday/Weekend`, `Year`
- Supports time-based calculations like **Month-over-Month Growth**, **Average Daily Sales**, and **Calendar Tooltips**.

#### 📦 Transactions Table
Fact table containing all transactional data:
- Columns include:  
  `CM Sales`, `CM Orders`, `CM Quantity`, `Color for Bars`, `Daily Avg Sales`, `Foot Note`, `Hour`,  
  `MoM Growth & Diff (Sales, Orders, Quantity)`, `Labels for Categories`, and `Placeholder` measure for page design control.

---


