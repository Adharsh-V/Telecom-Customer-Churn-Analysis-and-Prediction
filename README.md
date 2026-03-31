# Telecom Customer Churn Analysis and Prediction
An end-to-end data analytics and machine learning project covering ETL pipelines, exploratory data analysis, interactive Power BI dashboards, and a Random Forest churn prediction model — built on a real-world telecom dataset of  7,000 customers.

## Project Goals
* Analyze customer data across Demographic, Geographic, Payment & Account, and Services dimensions.
* Study churner profiles and identify areas for targeted marketing campaigns
* Build a machine learning model to predict future churners before they leave
  
## Key Business Metrics Tracked

* Total Customers 
* Total Churn
* Churn Rate
* New Joiners
* Revenue at Risk
* Churn by Category
* Contract Type
* Internet Type and more

  ## LayerTool / Technology
  Data Storage & Querying - MySQL
  Data Cleaning & ETL - MySQL + Excel
  Machine Learning - Python (Random Forest · scikit-learn · pandas)
  Visualization & Dashboard - Power BI
  Notebook Environment - Jupyter Notebook

  ##  Prediction Result:

452 customers out of the new joiners cohort were predicted as likely to churn. These are exported to CHURNED_FINAL2.csv and loaded back into Power BI for targeted campaign planning.

## Key Insights
* Contract Type - Month-to-Month customers churn at a significantly higher rate than One Year or Two Year contract holders
* Internet Type - Fiber Optic customers show higher churn — possibly due to competitive pricing
* Tenure - Customers in their first 6 months are the highest churn risk
* Services - Customers without Online Security, Tech Support, or Device Protection churn more
* Payment Method - Bank Withdrawal customers show elevated churn vs Credit Card users
* Predicted Churners - 452 new/joined customers flagged as high churn risk for proactive intervention
