## ZOMATO PROJECT

## Table of contents
[Project Background](#project-background)

[Main Objectives](#main-objectives)

[Data Structure and Initial Checks](#data-structure-and-initial-checks)

[Executive Summary](#executive-summary)

[Data Cleaning](#data-cleaning)

[Key Insights](#key-insights)

[Recommendations and Next Steps](#recommendations-and-next-steps)

[Assumptions and Caveats](#assumptions-and-caveats)

## Project Background

This project explores customer and sales behavior using transactional data from Zomato a food delivery business. The goal was to create a set of interactive Power BI dashboards that provide meaningful insights into customer demographics, income segmentation, cuisine preferences, sales trends, and restaurant performance. By analyzing this data, the project aimed to support data-driven decision-making in areas such as marketing strategy, customer targeting, product positioning, and sales growth opportunities.

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

   You can access the POWER BI Dashboard [HERE](https://app.powerbi.com/groups/me/reports/05b33951-9c47-4355-b8fa-728411e021f4/3b44a5be1f186e48d3e6?experience=power-bi)
   

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

To ensure accuracy, consistency, and usability of the dataset for analysis, several essential data cleaning steps were performed:

1) Handled missing ratings: Replaced entries marked as "--" in the rating column with a new category labeled “No Rating” for clarity in analysis.

2) Standardized city names: Cleaned and formatted the city column to ensure proper casing and eliminate duplicates caused by inconsistent naming (e.g., "delhi" to "Delhi").

3) Extracted time components: Derived Month and Day fields from the order_date column to enable time-series and seasonal analysis.

4) Removed duplicate records: Identified and eliminated duplicate rows to avoid inflating metrics and ensure accuracy in total sales and order counts.

5) Currency normalization: Converted all values in the sales_amount column to USD, some data was originally in Indian Rupees (INR) and some was in USD, using a consistent currency conversion logic, all currency data was stored in a separate column as USD_sales.

## Key Insights

## Dashboard #1

This dashboard explores customer segmentation by gender, marital 
status, age group, and family size. Male customers contribute to a higher 
percentage of total sales (56.89%) compared to females. Single individuals and those aged 24
29 generate the most revenue, while families of size 2 or 3 account for the majority of household purchases. 
The histogram of customer age shows that most spending comes from individuals between the ages of 22 and 26


![2025-04-15_14h49_01](https://github.com/user-attachments/assets/bcbe607b-a5f2-462e-a7fd-2cf3a9811f66)

1. Although smaller households typically spend less, customers from family size of 3 and 4 account for $3.5M roughly in total sales

2. While 24-29 year olds leads in spending, customers aged 30-35 also contribute a noticable share suggesting that mid-career professionals are another valuable segment for potential upselling and retention strategies.

3. With males at 56.89% and females at 43.11% the gap in spending is not drastic. This indicates that current marketing and offerings appeal to both genders fairly well and future campaigns can benefit from being equally gender inclusive rather than overly targeted.


## Dashboard #2
This dashboard breaks down sales performance based on income levels, educational background, 
and job roles. Customers with a monthly income between ₹25,001 and ₹50,000 contribute the most 
to spending. Interestingly, students outperform all other occupations with $3.28M in sales. A 
increase trend is observed in spending as educational qualifications rise, with those who only 
completed a school education having the lowest average sales and those with a Ph.D having the 
highest sales.

![2025-04-15_15h11_45](https://github.com/user-attachments/assets/272e812e-c7b2-47f9-a6bf-dc30a63ae375)

1) Homemakers and unemployed customers contribute the least to total sales, indicating a minimal 
conversion rate from these segments. This suggests that campaigns targeting these groups may not yield 
strong ROI unless tailored very strategically.

2) With higher education levels, customers with PhD and postgraduate degrees show the highest 
spending behavior, implying that higher education can correlate with higher purchasing power

3) Students represent the highest sales group by occupation, contributing over $3.28M in total sales.

4) The income bracket of ₹25,001-₹50,000 contributes the highest share (35.18%) of total spending.


## Dashboard #3
This visual focuses on temporal and geographical sales trends. August leads in average sales per month, 
while Friday is the peak day for spending. Sweets and Tandoori cuisine top the charts in average 
revenue. Among the most successful restaurants are Janta Snacks and Happy Brew Cafe. Tirupati and 
Electronic City, Bangalore are two of the six cities contributing the highest total sales.

![2025-04-15_15h15_41](https://github.com/user-attachments/assets/7ca51972-b365-4600-877a-a72f7915ea00)

1) August shows the highest average sales per order, indicating a potential seasonal spike or successful promotional 
efforts. This makes it a strategic month to model future campaigns around.

2) Sales peak on Fridays, suggesting customers are more likely to order before the weekend begins. Mid-week promotions could be used to balance this peak and reduce weekday drop-offs

3) There is a steep decline in sales on Saturdays and Sundays, possibly due to customers eating out or less 
dependence on delivery. This highlights an opportunity for weekend specific offers or “family meal” bundles to
recapture engagement

4) With these 6 top cities it has a suggested  strong customer base or better performing restaurants in their region. Targeted 
loyalty programs in these cities could help further lock in customer retention.


## Dashboard #4
This dashboard highlights performance over time, showing that 2018 had the highest annual 
sales. Sales peaked in Q1 and Q4, with noticeable dips in Q3. Although total sales reached 
$11.89M, there was a YoY sales decline of 58%. A steep drop in revenue is observed for 
restaurants with lower customer ratings, indicating a strong correlation between higher ratings 
and increased sales.

![2025-04-15_15h21_26](https://github.com/user-attachments/assets/e7c1db59-b443-4cf3-a21b-0703fd6ed28f)

1) Total sales sit at $11.89M, but there's a -58% YoY sales decline indicating a sharp drop in revenue performance.

2) The highest revenue was in 2018, and there’s been a downward trend since
 
3) Sales are heavily concentrated in restaurants with “Too Few Ratings.” There’s 
very little contribution from restaurants with 1k+, 5k+, or 10k+ reviews.

4) Q3 (July-September) shows the lowest total sales across all quarters.

5) Months like June, October, and November are visibly weaker in average 
monthly sales.


## Recommendations and Next Steps

1) Develop family focused product bundles or meal deals for smaller family units. Highlight value, 
convenience, and experience to appeal to this influential customer segment.
  
2) Prioritize marketing campaigns on channels frequented by young consumers (24-29 year olds) (e.g., Instagram, 
YouTube, mobile platforms). Consider tailored promotions for this demographic to maximize engagement and 
conversions.

3) Develop bundled offers or cashback promotions tailored to the ₹ 25,000-₹ 50,000 income group’s spending 
capacity. Focus marketing on affordability, value, and convenience for these financially active demographics.

4) Create exclusive student loyalty programs or discounts. Partner with universities or student
 push targeted offers, maximizing conversions from this high value segment.

5) Use geographically targeted social media ads in the top 6 high performing cities with limited time discounts.

6)  Run promotions/discounts for top performing cuisines and target them for weekdays

7) Highlight best-selling restaurants in app banners or email newsletters to further drive high value traffic

8)  In October, tie promotions to festivals or seasonal events (Diwali, Navratri) to increase emotional appeal and urgency.

9)  Offer discounts in exchange for reviews to boost user-generated content and credibility over time.

10)  Create a “Top Rated This Month” section in the app or site, encouraging users 
to try and rate new places.


## Assumptions and Caveats

1) Demographic Data Limitations: Some users may have incomplete demographic details (e.g., no marital status or family size), which might limit segmentation depth.

2) “Too Few Ratings” Category: Many restaurants fall under the “Too Few Ratings” group, which limits the reliability of conclusions about performance based on user ratings.

3) Missing Ratings Bias: A significant portion of the dataset contains entries with no rating ("--"), which may bias customer sentiment analysis or insights based on customer feedback.

4) Currency Conversion Rate: It is assumed that the applied currency conversion rate (from INR to USD) remained constant throughout the analysis period. Fluctuations in exchange rates were not accounted for. The data was collected from January 2017- December 2020 where the average currency rate was 1 USD = ₹83.41

5) Customer Demographics Accuracy: Demographic fields like age, gender, and marital status are assumed to be correctly entered by users and reflective of the target audienc
