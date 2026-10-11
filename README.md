# 📊 Sales & Profit Analytics Dashboard (SQL + Power BI)

An end-to-end data analytics project that demonstrates data processing using **SQL** and interactive business intelligence dashboarding using **Power BI**. This dashboard delivers actionable insights into sales performance, profitability, and customer behavior across different regions and categories.

---

## 🚀 Key Features & Visuals
* **Executive KPI Cards:** Instant visibility into core business metrics: **Total Sales (\$48M)**, **Total Profit (\$6M)**, and **Total Orders (2K)**.
* **Product Performance:** Vertical bar charts analyzing revenue distribution across core categories like **Electronics**, **Furniture**, and **Clothing**.
* **Payment Method Insights:** A breakdown of customer transaction preferences tracking **Net Banking**, **UPI**, **COD**, and Cards.
* **Top 5 States Analysis:** A horizontal bar chart dynamically ranking the top-performing states (e.g., **Punjab**, **Maharashtra**).
* **Monthly Profit Distribution:** A visually engaging Pie Chart showcasing the percentage share of profit across different months.
* **Geographical Matrix:** A detailed **Treemap** highlighting sales density across all regional states, functioning entirely offline.

---

## 🛠️ Tech Stack & Skills Demonstrated
* **SQL:** Data extraction, cleansing, transformation, and aggregation.
* **Power BI Desktop:** Data modeling, building relationships, and UI/UX dashboard design.
* **DAX (Data Analysis Expressions):** Writing advanced calculations for dynamic business metrics.

---

## 🔢 Core DAX Measures Used

### 1. Total Sales
```dax
Total Sales = SUM(Sales[Amount])
```

### 2. Total Profit
```dax
Total Profit = SUM(Sales[Profit])
```

### 3. Total Orders
```dax
Total Orders = DISTINCTCOUNT(Sales[OrderID])
```

### 4. Top 5 States Sales
```dax
Top 5 States Sales = 
CALCULATE(
    [Total Sales],
    TOPN(5, ALL(Sales[State]), [Total Sales], DESC)
)
```

---

## 📈 Major Business Insights
1. **Top Revenue Driver:** The **Electronics** segment dominates the business, contributing over **\$28M** to total sales.
2. **Customer Preferences:** Digital transaction modes like **Net Banking** and **UPI** are preferred by customers over traditional Cash on Delivery (COD).
3. **Core Markets:** Regional sales are heavily concentrated in **Punjab** and **Maharashtra**, making them key focal points for future marketing strategies.

---

## 📋 How to Run the Project
1. Clone this repository to your local machine.
2. Execute the provided `.sql` file in your SQL database manager to populate the data.
3. Open Power BI Desktop and open the `.pbix` project file.
4. Update the data source credentials if prompted, and click **Refresh** to sync the dashboard.

---

## 🤝 Contact & Connect
If you have any questions about this project or would like to collaborate on data analytics initiatives, feel free to reach out!

- **👤 Name:** Manpreet Singh
- **📧 Gmail:** preetaulakh8756@gmail.com
- **🖥️ GitHub Profile:** [Preet-Aulakh](https://github.com)
