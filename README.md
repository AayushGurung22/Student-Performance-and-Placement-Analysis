🎓 Student Performance & Placement Analysis

📌 Overview
This project analyzes student academic performance and placement outcomes using data visualization and data analysis techniques. The goal is to uncover patterns, identify key factors affecting placements, and provide insights that can help improve student success rates.

🚀 Features
📊 CGPA-based performance analysis
📈 Placement trends visualization
🧑‍🎓 Category-wise student insights (LOW, MEDIUM, HIGH performers)
🏢 Company-wise placement distribution
📉 Backlog and performance impact analysis
🎯 Interactive dashboards (Power BI)

🛠️ Tech Stack
Data Visualization: Power BI
Data Processing: Python (Pandas, NumPy)
Database: MySQL

📂 Project Structure
📁 student-performance-analysis
├── EDA.ipynb
├──dashboard.pbix
├──queries.sql
├── students_performance_dataset.csv
├── students_cleaned.csv
├── README.md

📊 Key Insights
1.) Students with CGPA ≥ 8 have significantly higher placement rates
2.) Backlogs negatively impact placement chances
3.) Certain branches show better placement performance
4.) Consistent academic performance correlates with better opportunities

📌 DAX Example (Used in Power BI)
CGPA Range = 
SWITCH(
    TRUE(),
    students_cleaned[cgpa] < 6, "LOW",
    students_cleaned[cgpa] >= 6 && students_cleaned[cgpa] < 8, "MEDIUM",
    students_cleaned[cgpa] >= 8, "HIGH"
)

⚙️ How to Run the Project
1️⃣ Data Preparation
Clean the dataset using Python script:
python clean_data.py
2️⃣ Power BI Dashboard
Open dashboard.pbix in Power BI Desktop
Refresh dataset if needed

📷 Dashboard Highlights
1.) Placement vs CGPA charts
2.) Branch-wise placement analysis
3.) Interactive filters (CGPA range, branch, gender, etc.)
4.) KPI cards (Total Students, Placed Students, Avg CGPA)

🎯 Objectives
-> Analyze student academic data
-> Identify placement influencing factors
-> Build interactive dashboards
-> Present insights in a user-friendly format

🔮 Future Improvements
Add machine learning model for placement prediction
Real-time data integration
Advanced filtering and drill-through dashboards
Deploy web app with embedded Power BI

👨‍💻 Contributors
Aayush Gurung

📄 License

This project is for educational purposes only.
