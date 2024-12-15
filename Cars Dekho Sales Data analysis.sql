CREATE database Cars;

USE cars;
SELECT *
FROM `car dekho`;

# Count total cars
SELECT COUNT(*)
FROM `car dekho`;

# How many cars will be available for 2023
select count(*)
FROM `car dekho`
WHERE year = 2023;

# How many cars will be available for 2020, 21, 22
SELECT COUNT(*), year
FROM `car dekho`
WHERE year IN (2020,2021,2022)
GROUP BY year;

SELECT COUNT(*)
FROM `car dekho`
WHERE year IN (2020,2021,2022);

# Print all the cars by year
SELECT year, COUNT(*) AS num_of_cars
FROM `car dekho`
GROUP BY year;

# Disel cars in 2020
SELECT COUNT(*)
FROM `car dekho`
WHERE year = 2020 AND fuel = 'Diesel';

# Petrol cars in 2020
SELECT COUNT(*)
FROM `car dekho`
WHERE year = 2020 AND fuel = 'Petrol';

# Number of cars by Fuel in all years
SELECT COUNT(*) AS Number_of_cars	, year, fuel
FROM `car dekho`
GROUP BY year, fuel;

# Year with the sales of cars more than 100 count
SELECT year, COUNT(*) AS number_of_car_sale
FROM `car dekho`
GROUP BY year
HAVING number_of_car_sale > 100;

# Cars between year 2015 to 2023
SELECT COUNT(*)
FROM `car dekho`
WHERE year BETWEEN 2015 AND 2023;