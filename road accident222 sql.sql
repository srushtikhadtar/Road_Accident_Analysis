CREATE DATABASE Accident;
USE Accident;
  
#What is the total number of casualties?
SELECT SUM(Number_of_Casualties) AS Total_Casualties
FROM `road accident data`;

#What is the average number of vehicles involved in an accident?
SELECT AVG(Number_of_Vehicles) AS Average_Vehicles
FROM `road accident data`;

#Which accident severity has the highest number of accidents?
SELECT Accident_Severity, COUNT(*) AS Total_Accidents
FROM `road accident data`
GROUP BY Accident_Severity
ORDER BY Total_Accidents DESC;

#How many accidents occurred in each day of the week?
SELECT Day_of_Week, COUNT(*) AS Total_Accidents
FROM `road accident data`
GROUP BY Day_of_Week
ORDER BY Total_Accidents DESC;

#How many accidents occurred in each road type?
SELECT Road_Type, COUNT(*) AS Total_Accidents
FROM `road accident data`
GROUP BY Road_Type
ORDER BY Total_Accidents DESC;