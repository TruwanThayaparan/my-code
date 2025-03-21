/* Advanced Query Challenge 4: Create an SQL query which returns cars whose CountryOfOrigin is England and LaunchPrice is greater than £100,000. */ 
/* Only include the fields; BrandName, ModelName and LaunchPrice; sort by LaunchPrice in descending order */

SELECT BrandName, ModelName, LaunchPrice
FROM CarManufacturers, CarModels
WHERE CarManufacturers.CountryOfOrigin = 'England' AND CarModels.LaunchPrice > 100000 AND CarModels.BrandID = CarManufacturers.BrandID
ORDER BY LaunchPrice DESC;
