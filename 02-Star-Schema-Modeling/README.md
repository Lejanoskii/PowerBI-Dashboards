
## Manufacturing BI Dashboard Using Star Schema Modeling
# 📌 Project Overview

This project presents a complete industrial analytics solution built using Power BI, including:

Dimensional Modeling (Star Schema);

ETL and Data Cleaning (Power Query);

Fact & Dimension tables;

Business KPIs with DAX Measures;

Interactive Manufacturing Dashboard;

The dataset simulates real industrial production processes, including machines, operators, shifts, production logs, and sensor readings. 

--- 
# 📊 Star Schema File provided in "Schema"

--- 
# 🧮 DAX Measures (KPIs)
Total Production

Total Production = SUM(F_Producao[prodQty])
---
Total Defects

Total Defects = SUM(F_Producao[Defects])
---
Defect Rate (%)

Defect Rate = DIVIDE([Total Defects], [Total Production])
---
Avg Production per Machine

Avg Production per Machine =
AVERAGEX(VALUES(D_Machine[machine_id]), [Total Production])
---
Avg Production per Shift

Avg Production per Shift =
AVERAGEX(VALUES(D_Shift[shift_name]), [Total Production])
---
# 🧠 Key Insights
- Afternoon shift had the highest production volume.

- Operator Ana Lira delivered the best performance.

- Unexpected decline: several days in early February show a sudden drop in production volume.

- Vulnerability point: the Press-900 machine concentrates the majority of production volume.
---
