# Amazon Customer Shopping Analysis

## 1. Project Overview
This project analyzes Amazon customer shopping behavior to understand purchase trends, customer preferences, and payment patterns. By combining SQL for data cleaning & data extraction and Power BI for visualization, the project provides actionable insights to help improve business decision-making and marketing strategies.

## 2. Objective
The objective of this project is to **analyze customer shopping behavior** and provide **actionable insights** to support business decision-making. The analysis focuses on three main areas:  
- **Purchase Trends:** Identify top-selling categories, popular sizes, and seasonal patterns.  
- **Customer Segmentation:** Analyze purchasing patterns based on subscription status, payment methods, and demographics.  
- **Marketing Opportunities:** Recommend strategies for promotions, loyalty programs, and inventory management.

## 3. Dataset
- **Source:** Kaggle  
- **Rows:** 4,000  
- **Columns:** 17  
- **Description:** Contains customershopping records and transaction information.  

## 4. Tools & Technologies
- **Data Import:** Excel (Kaggle dataset)  
- **Data Cleaning:** SQL + Power BI 
- **Analysis:** SQL (queries and aggregations)  
- **Data Transformation / Modelling / Visualisation:** Power BI

Dataset - 
<a href="https://github.com/Krishbelwal/Amazon_Customer_Analysis/blob/main/Dataset.csv">Dataset</a>

## 5. Key Insights
- **Top Categories:** Clothing is the most purchased category (92K purchases), followed by Accessories (59K), Footwear (29K), and Outerwear (13K).  
- **Subscription Status:** Customers without subscriptions purchased more (170K) compared to subscription users (63K).  
- **Payment Method:** PayPal is the most used payment method, followed by Credit Card, Cash, and Debit Card.  
- **Sales by Season:** Peak sales are almost equally distributed across Spring, Summer, Fall, and Winter (~25% each).  
- **Sales by Size:** Medium size is the most popular (45.12%), followed by Large (26.4%), Small (17.36%), and X-Large.  
- **Sales by Color:** Green, Teal, Yellow, Olive, Cyan, and Violet are the top-selling colors (~10–11K sales each).  

## 6. Recommendations
- Focus promotions on high-selling categories like Clothing and Accessories.  
- Offer loyalty programs or incentives for subscription users to increase repeat purchases.  
- Ensure inventory is optimized for popular sizes (Medium & Large) and top-selling colors.  
- Highlight peak seasonal periods in marketing campaigns to maximize sales.  
- Provide flexible payment options like PayPal and Credit Card to encourage conversions.  

## 7. Dashboard Preview
![Project Dashboard](Project_Dashboard)


## 8. Folder Structure
Dataset.csv - Raw dataset
project_objective.txt - Project objective details
Data_cleaning.sql - SQL scripts for data cleaning
Analysis.sql - SQL queries for analysis
views.sql - SQL views created for Power BI import
Project_Dashboard.png - Screenshot of final dashboard
