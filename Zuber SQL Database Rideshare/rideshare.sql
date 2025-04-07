---Find the number of taxi rides for each taxi company for November 15-16, 2017, name the resulting field trips_amount. Sort the results by the trips_amount field in descending order.

SELECT 
    c.company_name AS company_name,
    COUNT(t.trip_id) AS trips_amount
FROM 
    trips t
JOIN 
    cabs c ON t.cab_id = c.cab_id
WHERE 
    (c.company_name LIKE '%Yellow%' OR c.company_name LIKE '%Blue%')
    AND CAST(t.start_ts AS DATE) BETWEEN '2017-11-01' AND '2017-11-07'
GROUP BY 
    c.company_name
ORDER BY 
    trips_amount DESC;

--Find the number of rides for every taxi companies whose name contains the words "Yellow" or "Blue" for November 1-7, 2017. Name the resulting variable trips_amount. Group the results by the company_name field

 SELECT 
    c.company_name AS company_name,
    COUNT(t.trip_id) AS trips_amount
FROM 
    trips t
JOIN 
    cabs c ON t.cab_id = c.cab_id
WHERE 
    (c.company_name LIKE '%Yellow%' OR c.company_name LIKE '%Blue%')
    AND CAST(t.start_ts AS DATE) BETWEEN '2017-11-01' AND '2017-11-07'
GROUP BY 
    c.company_name
ORDER BY 
    trips_amount DESC;

--For November 1-7, 2017, the most popular taxi companies were Flash Cab and Taxi Affiliation Services. Find the number of rides for these two companies and name the resulting variable trips_amount. Join the rides for all other companies in the group "Other." Group the data by taxi company names. Name the field with taxi company names company. Sort the result in descending order by trips_amount.

SELECT 
    CASE 
        WHEN c.company_name = 'Flash Cab' THEN 'Flash Cab'
        WHEN c.company_name = 'Taxi Affiliation Services' THEN 'Taxi Affiliation Services'
        ELSE 'Other'
    END AS company,
    COUNT(t.trip_id) AS trips_amount
FROM 
    trips t
JOIN 
    cabs c ON t.cab_id = c.cab_id
WHERE 
    CAST(t.start_ts AS DATE) BETWEEN '2017-11-01' AND '2017-11-07'
GROUP BY 
    company
ORDER BY 
    trips_amount DESC;

--Retrieve the identifiers of the O'Hare and Loop neighborhoods from the neighborhoods table

SELECT 
    neighborhood_id, 
    name 
FROM 
    neighborhoods  
WHERE 
    name = 'O''Hare' 
    OR name = 'Loop';


--For each hour, retrieve the weather condition records from the weather_records table. Break all hours into two groups: Bad if the description field contains the words rain or storm, and Good for others. Name the resulting field weather_conditions. The final table must include two fields: date and hour (ts) and weather_conditions.

SELECT 
    ts AS date_and_hour, 
    CASE 
        WHEN description LIKE '%rain%' OR description LIKE '%storm%' THEN 'Bad'
        ELSE 'Good'
    END AS weather_conditions
FROM 
    weather_records;


--Retrieve from the trips table all the rides that started in the Loop on a Saturday and ended at O'Hare. Get the weather conditions for each ride. Also, retrieve the duration of each ride.

SELECT 
    trips.start_ts, 
    CASE 
        WHEN weather_records.description LIKE '%rain%' OR weather_records.description LIKE '%storm%' THEN 'Bad'
        ELSE 'Good'
    END AS weather_conditions,
    trips.duration_seconds
FROM 
    trips
JOIN 
    weather_records ON trips.start_ts = weather_records.ts
WHERE 
    trips.pickup_location_id = 50  -- Loop
    AND trips.dropoff_location_id = 63  -- O'Hare
    AND EXTRACT(DOW FROM trips.start_ts) = 6  -- Saturday
ORDER BY 
    trips.trip_id;
