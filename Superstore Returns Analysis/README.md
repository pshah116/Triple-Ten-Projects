## SUPERSTORE RETURNS ANALYSIS

## Table of contents
[Project Background](#project-background)

[Executive Summary](#executive-summary)

[Process](#process)

[Data](#data)

[Assumptions](#assumptions)

[Key Findings](#key-findings)

[Recommendations](#recommendations)

## Project Background

This project focused on the Superstore returns analysis. It was an independent initiative focused on demonstrating my skills in Tableau dashboard creation and data storytelling.
The objective was to deliver a clear, insightful analysis to the CEO of Superstore, helping them identify the key drivers behind customer returns 
and uncover strategies to reduce return volume.

Tableau Link can be found [HERE](https://public.tableau.com/app/profile/prerak.shah4558/viz/SuperstoreReturns_17422179934490/TotalSalesvsTotalReturns)

## Executive Summary
This analysis highlights key areas contributing to high product return rates and outlines strategic actions to mitigate their impact. 
Certain customers and products exhibit extreme return behavior, including 100% return rates, while specific regions—such as Utah—and seasonal
spikes in August and September further compound the issue. To address this, recommendations include enhancing employee training, improving product 
guidance and descriptions, temporarily halting sales of problematic items, and engaging directly with high-return customers. 
Additional strategies involve revising return policies in high-risk areas and shifting promotional efforts toward value-driven incentives 
like gift cards and free shipping. It is best advised to focus on return rate overall rather than total returns as no correlation was directly found between 
total sales vs total returns
![2025-04-07_12h37_53](https://github.com/user-attachments/assets/2e89fa4e-dba0-4f3b-a329-6cdc5ea693e8)





## Process
1) I began by merging the relevant data sheets for a unified view.
 
2) Next, I used visual analysis to identify key factors contributing to product returns.

3) I then developed an interactive dashboard to track and monitor return trends.
   
4) Finally, I compiled the insights into a Tableau story to effectively communicate my findings.

## Data

The data was one Excel spreadsheet file provided by TripleTen:

- `Superstore.xls`: each row corresponds to one product sold; sheets were LEFT JOIN'd  
  - `orders`: details all fields for each ordered item  
  - `returns`: details all fields for each returned item

## Assumptions

1) Sales are currently resulting in negative overall profits.

2) The losses appear to be directly tied to order patterns and product returns.

3) The operations team will need to implement changes to address these issues and improve profitability.

## Key Findings
1) A number of customers exhibit unusually high return rates, with some reaching 100% returns.
   ![2025-04-07_12h33_19](https://github.com/user-attachments/assets/7ef32004-3096-46a0-bfb5-b02c6d53b13e)


2) Several products also show extreme return behavior, including items with 100% return rates.
![2025-04-07_12h33_45](https://github.com/user-attachments/assets/972b3188-6223-4e86-baf4-fe8bfa639832)

3) Same day shipping was found to have the highest return rate overall, specifically in the West region
![2025-04-07_12h37_08](https://github.com/user-attachments/assets/ce85b2e4-ce72-4a87-88ca-5b3d5a741485)

4) Return volume spikes in August, followed closely by September, which aligns with a surge in overall order activity during these months.
![2025-04-07_12h35_43](https://github.com/user-attachments/assets/85de7b20-9ace-4a16-8759-25c9d8462e88)

## Recommendations

1)Discontinue top 10 products with high return rates, this will help free up cash flow

2) Offer discount for shipping with first/second class shipping since these return rates are lower than same day shipping
   
3) Consider keeping lower inventory in certain states on the subcategories with over 50% return rates to manage costs
   
4) Create a survey for customers who have the highest return rates to see why they returned their products and implement their feedback onto the website and other applicable department personel to correct it

5) Make sure every product is up to date with the latest information, and images to let customers know what they are exactly purchasing
 
6) offer customers a quick survey to help promote social media awareness of the Super Store after they have kept the product for 30 days and their experince with the product
   
7) Consider promotions during the spike period months of returns in February, August, and December on products but no returns accepted during promotional periods
 
8) Offer pre purchasing guides such as FAQ or read product reviews or call customer service so customers know what they are purchasing and this could lead to less returns

9) Reward members who make less frequent returns with a gift card or discount on product/shipping

10) Technology has the highest return rate, perhaps offer better guidance to customers to make sure they purchase the right product needed
