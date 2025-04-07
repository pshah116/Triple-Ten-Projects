## SHOPIFY POWER BI

## Table of contents
[Project Background](#project-background)

[Executive Summary](#executive-summary)

[Process](#process)

[Data](#data)

[Assumptions](#assumptions)

[Key Findings](#key-findings)

[Recommendations](#recommendations)

## Project Background

This was an independent project used to demonstrate my Power BI skills.
The objective was to analyze the app ecosystem on the Shopify platform using data
collected from publicly available Shopify websites, with the goal of identifying the key factors that contribute to a Shopify app’s success.

## Executive Summary
Using Power BI I examined review activity on the Shopify App platform to uncover patterns in user feedback and developer engagement. Overall, most apps were fairly rated between 3-5. A significant spike in reviews at the beginning of the dataset suggests a possible bulk update or data import, while the remainder of the period reflects steady, lower-volume review activity. A total of 7,341 total apps were on the platform. Developers like FireApps and PageFly stand out for their high volume of answered reviews, indicating strong customer engagement practices. However, many developers show limited responsiveness, presenting opportunities for improvement.


![2025-04-07_14h20_50](https://github.com/user-attachments/assets/4a71d784-ccae-43fb-bddc-d43c98e94340)

## Process

1) Began by analyzing the overall Shopify App Store landscape using KPI cards and visual charts to highlight key performance indicators.

2) Organized and visualized review data to evaluate customer feedback trends across apps.

3) Conducted an analysis of app developers, segmenting them by the types and volume of reviews they received.

## Data

The Excel file provided by TripleTen was a public data chosen from the Shopify App Store

- `Shopify.xls`: Excel workbook containing 4 sheets:   
  - `apps`: details all fields for each ordered item  
  - `apps_categories`: details all fields for each returned item
  -  `categories` : Categories of the apps. Each app has multiple categories
  -  `reviews` : Each review (row) contains information on user opinion about the related app (rating and comment). Also, it contains the response from the developer if present.

## Assumptions

1) The scraped data from Shopify websites is considered reliable and provides a representative view of the app ecosystem.

2) The shopify.xlsx file is well-structured, with consistent formatting and only minimal missing or inconsistent values.

3) The column names and data types are appropriately labeled and accurately describe the information contained in each table.

## Key Findings

1) Hextom stands out as the clear leader with the highest number of total ratings, exceeding 150,000, indicating strong market presence and high user engagement
   
![2025-04-07_14h38_31](https://github.com/user-attachments/assets/9ffc974f-dd5e-4bc7-af1a-ff403095d080)

2) Most apps are well rated above a 3, which shows a positive connection with user satisfaction
    
![2025-04-07_14h40_37](https://github.com/user-attachments/assets/0b8afa76-3bab-4b75-9591-98e8f784b42d)

3) FireApps leads the chart with the highest number of answered reviews (over 6,000), indicating a strong focus on customer support and engagement.
Developers such as PageFly, Privy, HulkApps.com, and ReConvert also show high levels of responsiveness, each answering between 4,000 and 5,000 reviews. This suggests these developers prioritize user feedback and reputation management.
![2025-04-07_14h42_57](https://github.com/user-attachments/assets/eeb51a1e-178c-417a-b56f-0b0e7dcf8ea3)

4) There is a significant spike in total reviews at the beginning of the observed period and the number of reviews drops sharply and stabilizes at a much lower volume afterward. Possibly the majority of review data was likely updated or imported on a single date, while typical user-generated reviews occur at a much steadier pace afterward
![2025-04-07_14h45_22](https://github.com/user-attachments/assets/d655bc28-6a14-466e-a4b2-a7c028b51a58)

## Recommendations

1) Implement time-based review analysis to detect patterns over weeks or months, helping identify when users are most likely to leave feedback and optimizing engagement strategies around those periods.

2) Compare review trends across developers to identify which apps or companies consistently generate new reviews, and replicate successful practices to boost visibility and credibility.

3) Monitor ongoing review volume to identify changes in user activity that may correlate with app updates, promotions, or seasonal trends.

4) Encourage consistent review generation by prompting users for feedback post-interaction to maintain a healthy flow of recent, relevant user sentiment.

