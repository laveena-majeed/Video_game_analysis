# Video_game_analysis

## 📖 Project Overview
The video game industry is a high-stakes market where commercial success is often unpredictable. This project is an end-to-end **Business Intelligence solution** designed to analyze global sales trends, user engagement metrics, and critical ratings.

By integrating **sales registries** with **community engagement logs** (Wishlists, Backlogs, Plays), this analysis provides data-driven strategies for game developers and publishers to optimize genre selection, platform targeting, and regional marketing.

---

## ❓ Business Problem
Stakeholders in the gaming industry face significant uncertainty when greenlighting new titles. Key challenges include:
* **Genre Saturation:** Identifying which genres are oversaturated vs. high-yield.
* **Regional Fragmentation:** Understanding distinct preferences between Japan (JP), North America (NA), and Europe (EU).
* **The "Hype" Gap:** Analyzing why highly-rated games sometimes fail to sell, while lower-rated titles achieve commercial success.

---

## 🛠️ Tech Stack & Methodology

### 1. Data Processing (Python & Pandas)
* **Data Cleaning:** Handled missing values in Critical Ratings (imputed with median) and Sales figures.
* **Feature Engineering:** Created a custom **"Engagement Score"** (`Plays + Wishlists + Backlogs`) to quantify user interest.
* **Normalization:** Solved the "Many-to-Many" genre problem by exploding multi-genre tags (e.g., "Action-Adventure") into distinct rows for accurate aggregation.

### 2. Data Warehousing (SQL)
* Structured the cleaned data for efficient querying.
* Performed exploratory data analysis (EDA) to identify initial correlations between Release Year, Region, and Global Sales.

### 3. Visualization (Power BI)
* Developed **3 Interactive Dashboards** using DAX measures for dynamic filtering.
* Implemented "Drill-through" capabilities to explore specific genres and platforms.

---

## 📊 Dashboard Previews

### 1. Game Insights Dashboard
*Focus: User behavior, critical reception, and "Pile of Shame" analysis.*
> **Key Insight:** Identified a "High Wishlist / Low Play" cluster, representing a prime opportunity for discount marketing.
![Game Insights Screenshot](path/to/Screenshot_2026-02-10_195433.png)

### 2. Business Intelligence & Strategy
*Focus: Revenue drivers, regional heatmaps, and genre funnels.*
> **Key Insight:** **Shooter** and **Action** genres generate the highest revenue per title (Index: 12.2), while **Adventure** games are oversaturated (31% volume, low revenue).
![Business Intelligence Screenshot](path/to/Screenshot_2026-02-10_124136.png)

### 3. Sales Performance Dashboard
*Focus: Platform lifecycles and publisher dominance.*
> **Key Insight:** Validated the "Walled Garden" strategy, showing Nintendo and Sony dominance in first-party software sales.
![Sales Performance Screenshot](path/to/Screenshot_2026-02-07_172441.png)

---

## 💡 Key Findings

* **The Genre Economics:** While **Adventure** games account for **31%** of releases, they generate significantly lower revenue compared to **Shooter** games, which are high-cost but high-reward "Blue Chip" investments.
* **Regional Strategy:** Marketing budgets must be decoupled. **RPGs** perform disproportionately well in Japan, while **Shooters** dominate North American markets.
* **Wishlists as Predictors:** There is a direct positive correlation between pre-launch Wishlist volume and "Day 1" Sales, validating the importance of community building.

---

## 📂 Project Structure

```text
├── data/
│   ├── raw/                  # Original CSV files (vgsales, engagement_logs)
│   └── processed/            # Cleaned data ready for SQL/PowerBI
├── notebooks/
│   ├── 01_data_cleaning.ipynb   # Python ETL pipeline
│   └── 02_exploratory_eda.ipynb # Initial statistical analysis
├── sql/
│   ├── schema_creation.sql   # Table definitions
│   └── analytical_queries.sql # Key business queries
├── dashboards/
│   └── Game_Analytics_Report.pbix # Power BI Project File
├── images/                   # Screenshots for README
└── README.md                 # Project Documentation
