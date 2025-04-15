## ZOMATO SALES & MARKETING PROJECT

## Table of contents
[Project Background](#project-background)

[Main Objectives](#main-objectives)

[Data Structure and Initial Checks](#data-structure-and-initial-checks)

[Executive Summary](#executive-summary)

[Data Cleaning](#data-cleaning)

[Exploratory Data Analysis](#exploratory-data-analysis)

[Key Insights](#key-insights)

[Recommendations and Next Steps](#recommendations-and-next-steps)

[Assumptions and Caveats](#assumptions-and-caveats)

## Project Background

This project explores customer and sales behavior using transactional data from a restaurant or food delivery business. The goal was to create a set of interactive Power BI dashboards that provide meaningful insights into customer demographics, income segmentation, cuisine preferences, sales trends, and restaurant performance. By analyzing this data, the project aims to support data-driven decision-making in areas such as marketing strategy, customer targeting, product positioning, and sales growth opportunities.

The dashboards are broken into four key analytical areas:

1) Customer Demographics – Gender, marital status, age, and family size distribution by sales.

2) Income & Education Analysis – Linking income, education, and occupation to purchasing behavior.

3) Sales Trend & Cuisine Analysis – Understanding monthly, weekly, and location-based sales patterns.

4) Overall Sales KPIs – Year-over-year growth, quarterly sales, and restaurant-level performance metrics.

## Main Objectives

1) Identify the top customer segments based on age, gender, family size, income, and education contributing to the highest sales.

2) Analyze sales trends over time, including by month, quarter, and year to spot seasonality or declining periods.

3) Evaluate performance across cities and cuisines to understand regional preferences and top-selling food types.

4) Measure restaurant performance to identify the highest average revenue generators.

5) Assess marketing opportunities by identifying underperforming demographics or time periods that could benefit from targeted campaigns.

6) Understand customer behavior patterns to inform targeted promotions, loyalty programs, and personalized offerings.

   ## Data Structure and Initial Checks
![2025-04-15_14h03_38](https://github.com/user-attachments/assets/b23b7d7d-d448-40d5-9d3d-ad8130dca502)

The data model shown in the image illustrates two primary tables used: orders and users. 
The relationship between these tables is defined through a one-to-many (1:*) join, with the users table serving as the dimension (lookup) 
table and orders acting as the fact table. This ensures that each user (in the users table) can be associated with multiple orders in the orders table. 
The linking is done via a common column (user ID field)

✅ Data Type Consistency: Verified that date-related fields (like Month, Order Year, and Day) are in the appropriate formats for time-series analysis.

✅ Table Integrity: Ensured no circular relationships or inactive joins exist that could disrupt visuals or DAX measures.

✅ Hidden Columns: Verified that non-essential fields (email, password,customer name) are hidden to reduce visual clutter and improve model clarity.


## Executive Summary
This sales dashboard provides a comprehensive analysis of business performance across time periods, geographies, 
and key restaurant and cuisine categories. One of the most critical insights is the -58% Year-over-Year (YoY) decline in sales,
signaling an urgent need for strategic intervention in marketing, customer engagement, and operational planning. 
From a quarterly perspective, Q1 and Q4 report the strongest total sales, suggesting that campaigns around the
start and end of the calendar year could be particularly effective. However, Q3 reflects a noticeable dip, making it a 
prime candidate for targeted promotional efforts to boost engagement and revenue. While several cities and 
cuisines are performing exceptionally well, the overall downward sales trend and seasonal dips suggest the need for
improved customer retention strategies, and reassessment of underperforming time frames to drive growth and profitability is required

![2025-04-11_16h15_41](https://github.com/user-attachments/assets/747a1809-c332-4c86-8992-b45ff9a7f8d7)

## Data Cleaning




