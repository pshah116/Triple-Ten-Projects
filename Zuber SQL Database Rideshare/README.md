## ZUBER RIDESHARE

## Table of contents
[Project Background](#project-background)

[Executive Summary](#executive-summary)

[Process](#process)

[Data](#data)

[Assumptions](#assumptions)

[Findings](#findings)

[Recommendations](#recommendations)

## Project Background

This independent project was developed to demonstrate my proficiency in SQL and my ability to extract meaningful insights from complex datasets. 
The objective was to analyze ride data from a fictional competitor platform to uncover trends in passenger behavior and evaluate how external 
factors—such as time, location, and weather—affected ride demand. By writing optimized queries and exploring key metrics, I was able to identify 
patterns that could help inform strategic decisions for improving customer experience and operational efficiency in the rideshare industry.

## Executive Summary

This analysis examined taxi ride data and focused on company performance, ride volume, and weather impact. Flash Cab led in total rides during peak dates, while Blue Diamond stood out among companies with color-based names. Despite their popularity, lesser-known companies collectively accounted for a larger share of rides. Additionally, weather conditions were categorized hourly, allowing for insights into how external factors may influence ride patterns. 
![2025-04-07_11h31_18](https://github.com/user-attachments/assets/00df39aa-eed4-4d98-81ed-539ed8cdc7e4)


## Process

1) Analyzed taxi ride data for specific dates, organizing trips by total count.

2) Filtered and grouped rides by companies with names matching specific keywords.

3) Retrieved neighborhood ID codes for both O'Hare and the Loop.

4) Categorized weather conditions on an hourly basis to align with ride data.

5) Isolated Saturday rides from the Loop to O'Hare, including weather conditions and trip duration.

6) Sorted the final dataset for clear and organized presentation.

## Data

A database with info on taxi rides in Chicago:

<pre> neighborhoods_table: data on city neighborhoods  
  `name`: name of the neighborhood - 
  `neighborhood_id`: neighborhood code - 
  
  cabs_table: data on taxis 
  `cab_id`: vehicle code 
  `vehicle_id`: the vehicle's technical ID 
  `company_name`: the company that owns the vehicle 
  
  trips_table: data on rides 
  `trip_id`: ride code 
  `cab_id`: code of the vehicle operating the ride 
  `start_ts`: date and time of the beginning of the ride (time rounded to the hour) 
  `end_ts`: date and time of the end of the ride (time rounded to the hour) 
  `duration_seconds`: ride duration in seconds 
  `distance_miles`: ride distance in miles 
  `pickup_location_id`: pickup neighborhood code 
  `dropoff_location_id`: dropoff neighborhood code 
  
  weather_records table: data on weather 
  `record_id`: weather record code 
  `ts`: record date and time (time rounded to the hour) 
  `temperature`: temperature when the record was taken 
  `description`: a brief description of weather conditions (e.g., "light rain", "scattered clouds") </pre>

  ## Assumptions 
1) There is no direct relationship between the trips table and the weather_records table in the database.

2) neighborhood_id serves as the primary key for the neighborhoods table.

3) cab_id is the primary key for the cabs table.

4) trip_id functions as the primary key for the trips table.

5) record_id is the primary key for the weather_records table.

## Findings

1) During November 15–16, 2017, Flash Cab recorded the highest number of taxi rides, completing a total of 19,558 trips.

2) For the week of November 1–7, 2017, when filtering for taxi companies with names containing “Yellow” or “Blue,” Blue Diamond led with 6,764 rides.

3) A comparison between Flash Cab, Taxi Affiliation Services, and all other companies for the same early-November period revealed that rides from all other companies combined outnumbered the top two both individually and together.

4) Each hourly time block was assigned a specific weather condition label, beginning with a default classification of "Good."

5) A SQL output table was created to list all Saturday rides starting in the Loop and ending at O’Hare, including their start times, weather conditions, and trip durations

## Recommendations

1) Investigate Flash Cab’s Operational Efficiency-
Since Flash Cab consistently leads in ride volume, analyze what contributes to its high performance—fleet size, coverage area, or pricing—and explore how other companies can adopt similar strategies.

2) Leverage Keyword Trends in Branding-
Given the strong performance of "Blue Diamond" among companies with color-themed names, conduct sentiment and visibility analysis on brand keywords to understand if branding influences user choice and loyalty.

3) Segment and Target “Other” Companies for Optimization-
The combined ride volume of lesser-known companies exceeds that of top providers. Segment these “Other” operators to identify high-potential contributors and provide tailored insights to improve their service offerings or partnerships.

4) Correlate Weather Patterns with Ride Trends-
Since weather data is assigned hourly, use this to run time-series analyses to explore how conditions impact ride demand and trip duration. This can help in optimizing dispatching, pricing, and resource allocation during specific weather scenarios.
